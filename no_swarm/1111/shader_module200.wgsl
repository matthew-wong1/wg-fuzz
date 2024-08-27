struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(84439u, 4294967295u, 0u, 0u), vec4<u32>(58700u, 1u, 48164u, 37862u), vec4<u32>(0u, 50326u, 3050u, 13719u), vec4<u32>(13248u, 36984u, 4294967295u, 65156u), vec4<u32>(4294967295u, 16323u, 63595u, 57451u), vec4<u32>(1u, 0u, 79228u, 0u));

var<private> global1: Struct_1 = Struct_1(1131f);

var<private> global2: f32 = -1038f;

var<private> global3: array<u32, 26>;

var<private> global4: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(34867u), 1u, global3[_wgslsmith_index_u32(countOneBits(74791u), 26u)]) >> (4294967295u % 32u), global3[_wgslsmith_index_u32(reverseBits(1u), 26u)], _wgslsmith_sub_u32(0u ^ ~u_input.a, ~50887u), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_sub_u32(1u, u_input.b.x)), 4294967295u)), global4.b, 1i);
    var var_1 = firstTrailingBit(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(var_0.a.yzx, firstTrailingBit(~vec3<u32>(34287u, global3[_wgslsmith_index_u32(56528u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)]))), var_0.a.x));
    global0 = array<vec4<u32>, 6>();
    let var_2 = var_0.a.wzy;
    global0 = array<vec4<u32>, 6>();
    return var_0.b;
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(627f - _wgslsmith_f_op_f32(-global4.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1134f - global4.b.a)))))) + -1106f);
    global1 = func_2();
    var var_0 = _wgslsmith_f_op_f32(ceil(-1279f));
    return ~vec4<i32>(u_input.d.x, 0i, _wgslsmith_div_i32(u_input.d.x, _wgslsmith_clamp_i32(-global4.c.x, u_input.d.x, ~(-22421i))), ~_wgslsmith_sub_i32(max(38839i, 1i), ~0i));
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = Struct_1(global1.a);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], func_2(), -2147483647i);
    let var_2 = func_3(~global0[_wgslsmith_index_u32(u_input.c | countOneBits(~37163u), 6u)]);
    global2 = var_1.b.a;
    global4 = Struct_4(global4.a, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.a - global4.b.a)))))), ~vec4<i32>(-11497i, -2147483647i, u_input.d.x, _wgslsmith_add_i32(u_input.d.x >> (var_1.a.x % 32u), firstTrailingBit(-16065i))));
    return _wgslsmith_add_i32(2147483647i, global4.c.x);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(156f + 875f)), func_2().a, 2640f)));
    let var_1 = func_2();
    global1 = func_2();
    return Struct_2(select(select(global0[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(1u, 26u)] >> (4294967295u % 32u)), 6u)], firstLeadingBit(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 6u)]), vec4<bool>(arg_0 | arg_0, false, var_0.x >= -913f, true)), ~(~vec4<u32>(1u, 1u, 1u, 1u)), false), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(global4.a.x - -1000f))))), -_wgslsmith_dot_vec3_i32(-u_input.d.xzz, -u_input.d.xyz) << ((u_input.b.x ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(10889u, 1u)), firstTrailingBit(global3[_wgslsmith_index_u32(101445u, 26u)]), 0u >> (u_input.e % 32u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, _wgslsmith_mult_i32(global4.c.x, 0i), vec2<i32>(firstLeadingBit(func_1(4294967295u >> (1u % 32u), true)), func_1(~1u, true)));
    let var_1 = any(vec3<bool>(!(!any(vec2<bool>(false, false))), any(vec2<bool>(var_0.b.a < global4.a.x, all(vec2<bool>(false, false)))), !all(vec2<bool>(true, true))));
    let var_2 = global3[_wgslsmith_index_u32(countOneBits(firstTrailingBit(firstLeadingBit(1146u))), 26u)];
    var var_3 = u_input.d.x;
    let var_4 = max(reverseBits((u_input.b >> (u_input.b % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(var_0.a.xx, max(var_0.a.xy & var_0.a.wy, _wgslsmith_add_vec2_u32(u_input.b, u_input.b)))) & ~vec2<u32>(31323u, var_0.a.x);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global4.a)))) + vec2<f32>(1312f, global4.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(608f, var_0.b.a) - vec2<f32>(var_0.b.a, -293f)))))));
    var_0 = func_4(var_1, global4.c.x >> (((_wgslsmith_add_u32(4121u, u_input.e) << (abs(50697u) % 32u)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 78504u)), firstLeadingBit(0u))) % 32u), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d.yzx, _wgslsmith_div_vec3_i32(global4.c.yyy, vec3<i32>(35170i, -1i, 23985i)) | u_input.d.zxx), _wgslsmith_mult_i32(abs(global4.c.x), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(global4.c.yx, ~vec2<i32>(~global4.c.x, 26046i), -vec2<i32>(-20383i, -var_0.c)), vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(-global1.a)), ~(abs(vec3<u32>(1u, 82554u, 0u)) ^ ~vec3<u32>(global3[_wgslsmith_index_u32(var_0.a.x, 26u)], 112293u, 65554u)) | countOneBits(~firstLeadingBit(var_0.a.zzx)), 2147483647i, var_5.x);
}

