struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: array<bool, 10> = array<bool, 10>(true, true, true, true, true, true, true, false, false, true);

var<private> global2: vec2<u32> = vec2<u32>(0u, 28392u);

var<private> global3: Struct_1 = Struct_1(638f, i32(-2147483648));

var<private> global4: Struct_2 = Struct_2(-1971f, vec2<f32>(1226f, -170f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    let var_0 = 36197i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - _wgslsmith_f_op_f32(ceil(global4.a))), 0i);
    global1 = array<bool, 10>();
    let var_2 = Struct_1(1000f, -u_input.c);
    let var_3 = var_2.a;
    return firstLeadingBit(var_0);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b, u_input.d.x), vec2<i32>(2265i, 34155i), vec2<i32>(global3.b, u_input.b))), 31241i), _wgslsmith_add_vec4_i32(min(-vec4<i32>(global3.b, -57244i, -11604i, -29140i), u_input.d >> ((vec4<u32>(global2.x, 0u, 79317u, global2.x) & vec4<u32>(global2.x, global2.x, global2.x, 1u)) % vec4<u32>(32u))), vec4<i32>(-abs(global3.b), 1i, func_3(vec2<u32>(global2.x, 24103u) >> (vec2<u32>(10118u, 0u) % vec2<u32>(32u)), 335f), _wgslsmith_mult_i32(17425i, u_input.d.x))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(global3.a - 1f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.a, -872f), _wgslsmith_f_op_vec2_f32(trunc(global4.b)), select(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2.x, 10u)])) & true, !any(vec3<bool>(false, true, true)), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 63618u, global2.x), vec3<u32>(37580u, 4294967295u, 4294967295u)), abs(global2.x)), 10u)]))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), 1i);
    var var_3 = false && (~(abs(global3.b) & global3.b) > _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.b, var_2.b, var_2.b), _wgslsmith_clamp_vec3_i32(u_input.d.xxy, vec3<i32>(global3.b, var_2.b, 1i), u_input.d.zyy), min(vec3<i32>(var_2.b, 1i, -9462i), u_input.d.xzy)), max(-u_input.d.yww, ~vec3<i32>(global3.b, var_2.b, u_input.c))));
    let var_4 = var_1;
    return Struct_1(957f, -_wgslsmith_add_i32(-42547i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-54680i, u_input.c), _wgslsmith_mult_i32(-37823i, var_2.b))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = func_2();
    global3 = Struct_1(global3.a, abs(var_0.b) >> (firstLeadingBit(1u & (global2.x << (0u % 32u))) % 32u));
    let var_1 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, ~min(arg_1.x, 0u), arg_1.x), ~(~vec3<u32>(4294967295u, arg_1.x, arg_1.x))), 4294967295u, arg_1, ~(firstLeadingBit(~vec3<u32>(79387u, 17981u, arg_1.x)) << ((vec3<u32>(1u, global2.x, global2.x) << (firstTrailingBit(vec3<u32>(global2.x, arg_1.x, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u))), func_2());
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), func_2().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - -943f) * _wgslsmith_f_op_f32(abs(var_1.e.a))))));
    let var_3 = vec4<f32>(-132f, global3.a, _wgslsmith_f_op_f32(trunc(403f)), _wgslsmith_f_op_f32(max(var_1.e.a, _wgslsmith_f_op_f32(max(-101f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-726f + -958f), _wgslsmith_f_op_f32(floor(-1774f)))))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-518f + _wgslsmith_div_f32(-305f, -591f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -129f, _wgslsmith_f_op_f32(func_1(~1i, abs(vec2<u32>(18027u, 2826u)), global0[_wgslsmith_index_u32(global2.x, 9u)])))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(ceil(-642f)), -1052f), vec3<bool>(!global1[_wgslsmith_index_u32(66191u, 10u)], true, false)));
    let var_1 = global1[_wgslsmith_index_u32(~13584u, 10u)];
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(min(global2.x, _wgslsmith_add_u32(global2.x, global2.x)), ~44975u), vec2<u32>((35604u ^ global2.x) ^ global2.x, global2.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_1(select(2147483647i, global3.b, global1[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 10u)]), countOneBits(~vec2<u32>(1u, 60821u)), reverseBits(select(vec2<i32>(0i, 15873i), u_input.d.yw, vec2<bool>(global1[_wgslsmith_index_u32(39129u, 10u)], true))) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, global2.x, global2.x), vec3<u32>(var_2.x, 1u, 0u)), 9u)])), ~(~(~(-5209i))));
    let var_4 = func_2();
    global4 = Struct_2(217f, _wgslsmith_f_op_vec2_f32(floor(var_0.xx)));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-830f)))), _wgslsmith_f_op_vec2_f32(-var_0.yz));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, abs(-20177i | global3.b), ~global2.x, 1u, var_4.b);
}

