struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: array<Struct_2, 11>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec4<i32> {
    global1 = 1u;
    let var_0 = Struct_1(abs(vec4<i32>(_wgslsmith_mult_i32(arg_0.x, 14802i), firstTrailingBit(28772i), _wgslsmith_div_i32(2147483647i, -1i), -25085i >> (0u % 32u))) & global2.a);
    global2 = Struct_1(-vec4<i32>(~var_0.a.x, ~(-35013i) << ((u_input.b.x << (u_input.c.x % 32u)) % 32u), _wgslsmith_mod_i32(arg_0.x, -7770i), global2.a.x));
    global4 = array<Struct_2, 11>();
    global3 = abs(max(~2147483647i, -var_0.a.x));
    return abs(vec4<i32>(firstLeadingBit(56303i), reverseBits(~(arg_0.x & global2.a.x)), 0i, reverseBits(_wgslsmith_add_i32(global2.a.x, var_0.a.x)) & ~(global2.a.x | -1758i)));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(abs(func_3(max(vec3<i32>(-2147483647i, -5426i, arg_0.x), global2.a.xyx), -566f)), vec4<i32>(1682i, (arg_0.x >> (u_input.e.x % 32u)) | arg_0.x, firstLeadingBit(_wgslsmith_mult_i32(0i, -1i)), global2.a.x)));
    global1 = u_input.b.x;
    var var_1 = ~max(select(u_input.e.xwx, u_input.e.yxx, select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), abs(u_input.c ^ u_input.e.yzy)) & _wgslsmith_sub_vec3_u32(abs(abs(vec3<u32>(u_input.d, u_input.e.x, u_input.e.x) | vec3<u32>(33274u, 1u, u_input.d))), u_input.e.xyz);
    let var_2 = Struct_2(global2.a.x, Struct_1(vec4<i32>(1i, var_0.a.x, reverseBits(global2.a.x), 36489i)));
    let var_3 = 98238u;
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(func_3(global2.a.zzz, -1065f).x, -17860i, arg_0.x, 1i), vec4<i32>(var_2.a & 1i, var_0.a.x & -11516i, i32(-1i) * -50492i, i32(-1i) * -1i)) ^ select(arg_0.x, -2147483647i, all(vec4<bool>(true, true, true, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.e.wxz;
    global1 = ~2675u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(106f - 1109f))), _wgslsmith_div_f32(1062f, 858f));
    var var_2 = true;
    let var_3 = ~vec2<i32>(~func_2(abs(global2.a.xyw)), abs(-11064i));
    return Struct_1(~abs(~abs(vec4<i32>(0i, -19740i, 24462i, global2.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    global1 = _wgslsmith_dot_vec3_u32(select(countOneBits(select(countOneBits(u_input.e.yyy), vec3<u32>(24801u, u_input.d, u_input.e.x), select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(false, true, true), arg_3.x))), ~_wgslsmith_clamp_vec3_u32(u_input.e.zyw, u_input.c, abs(u_input.e.yyw)), select(vec3<bool>(true, all(vec3<bool>(arg_3.x, arg_3.x, true)), u_input.c.x != u_input.b.x), vec3<bool>(arg_0.a.x > arg_2.a.x, false, any(vec2<bool>(arg_3.x, false))), arg_3.x)), _wgslsmith_div_vec3_u32(~u_input.c, _wgslsmith_sub_vec3_u32(~select(u_input.c, u_input.e.wzy, vec3<bool>(arg_3.x, true, arg_3.x)), ~vec3<u32>(u_input.a, 1u, u_input.d))));
    global0 = u_input.d;
    global4 = array<Struct_2, 11>();
    let var_1 = _wgslsmith_mod_u32(1u, u_input.e.x);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(2147483647i, func_4(func_1(), Struct_1(-vec4<i32>(global2.a.x, global2.a.x, 1i, global2.a.x)), func_1(), vec2<bool>(true, true)));
    var var_1 = ~_wgslsmith_mod_u32(1u, ~(~1u));
    global0 = ~min(~u_input.a, u_input.c.x);
    var var_2 = func_4(var_0.b, func_1(), Struct_1(var_0.b.a), select(vec2<bool>(true, !all(vec3<bool>(false, false, true))), vec2<bool>(true, true), vec2<bool>(false, true)));
    let var_3 = global4[_wgslsmith_index_u32(~(~(~select(u_input.d, ~4294967295u, true))), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, var_2.a.x, var_2.a.x), vec3<i32>(0i, global2.a.x, global2.a.x))) & func_1().a.xwz), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.e.x), max(u_input.a, u_input.c.x)), ~(~u_input.c.x), min(_wgslsmith_div_u32(4294967295u, 40867u), reverseBits(u_input.c.x)), u_input.d) | u_input.e, 1000f, u_input.a, vec3<f32>(-565f, _wgslsmith_f_op_f32(-802f + _wgslsmith_f_op_f32(round(-1000f))), 175f));
}

