struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-346f, 899f, -833f, -1000f);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(420f, -1278f, -478f)), Struct_1(vec3<f32>(1028f, -316f, -475f)), Struct_1(vec3<f32>(391f, 357f, 174f)), Struct_1(vec3<f32>(-828f, 702f, 1142f)), Struct_1(vec3<f32>(630f, -318f, 239f)), Struct_1(vec3<f32>(1323f, -832f, 1000f)), Struct_1(vec3<f32>(824f, -1302f, 413f)), Struct_1(vec3<f32>(-1290f, -472f, 954f)), Struct_1(vec3<f32>(-1530f, 1601f, 101f)), Struct_1(vec3<f32>(123f, -1996f, 1525f)), Struct_1(vec3<f32>(-1147f, 462f, 1000f)));

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), -10692i, 54705i);

var<private> global3: array<vec3<u32>, 23>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    global2 = -(~reverseBits(-vec3<i32>(-2147483647i, global2.x, global2.x)));
    global2 = select(min(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global2.x, global2.x), vec3<i32>(2147483647i, -52548i, global2.x)), vec3<i32>(-36105i, 1i, -11192i) >> (global3[_wgslsmith_index_u32(0u, 23u)] % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(20604i, -31440i, global2.x), vec3<i32>(-2147483647i, global2.x, 43700i), true), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, -6314i, 32867i), vec3<i32>(11200i, global2.x, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(-1i, -2147483647i, global2.x)))), vec3<i32>(select(_wgslsmith_add_i32(-1i, 0i), global2.x, true), -31386i, abs(1i)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_2.a.x >= global0.x))) >> (vec3<u32>(arg_1, reverseBits(_wgslsmith_mult_u32(14994u, arg_1)), u_input.b.x) % vec3<u32>(32u));
    global1 = array<Struct_1, 11>();
    global3 = array<vec3<u32>, 23>();
    global1 = array<Struct_1, 11>();
    return ~0u;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = vec3<u32>(13618u, ~4294967295u, ~(u_input.a | func_3(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], 778u, global1[_wgslsmith_index_u32(u_input.a, 11u)])));
    var var_1 = 193f;
    let var_2 = global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(~0u, var_0.x)) << (func_3(Struct_1(global0.yzz), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 14421u, var_0.x), global3[_wgslsmith_index_u32(var_0.x, 23u)]), 4294967295u ^ var_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.xxz - global0.www)))) % 32u), 11u)];
    global3 = array<vec3<u32>, 23>();
    global1 = array<Struct_1, 11>();
    return (~select(global2.x >> (28978u % 32u), 2147483647i, true & arg_1) >> ((~(~1u) ^ u_input.b.x) % 32u)) > -firstLeadingBit(1i);
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_1(global0.xzx);
    var var_1 = !func_2(!vec2<bool>(false, u_input.b.x == 100051u), false, true);
    var var_2 = firstTrailingBit(~4294967295u);
    var_2 = u_input.a;
    var var_3 = -1592f;
    return vec2<f32>(-1566f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x - -498f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_2 = !any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), true, select(false, true, false))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(-779f - -1763f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-352f)))));
    global2 = firstLeadingBit(~_wgslsmith_div_vec3_i32(~(vec3<i32>(-36493i, global2.x, global2.x) << (vec3<u32>(u_input.b.x, 30579u, u_input.b.x) % vec3<u32>(32u))), ~abs(vec3<i32>(global2.x, -11669i, 36275i))));
    global0 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f - var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-575f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-194f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, var_1.x, true))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(min(503f, -2423f)))));
    let var_4 = ~(~u_input.a);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_0), _wgslsmith_f_op_f32(-var_0)))) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1181f), 1255f)))));
    var var_5 = global1[_wgslsmith_index_u32(reverseBits(~(~abs(u_input.b.x))), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-2161f, _wgslsmith_f_op_f32(-1955f + -1053f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(1083f, _wgslsmith_f_op_vec2_f32(func_1()).x)), _wgslsmith_f_op_f32(-1770f + _wgslsmith_f_op_f32(f32(-1f) * -779f))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f))))), _wgslsmith_add_vec3_u32(countOneBits(countOneBits(min(vec3<u32>(var_4, 4294967295u, 4294967295u), global3[_wgslsmith_index_u32(6761u, 23u)]))), vec3<u32>(2223u ^ var_4, 95132u, ~countOneBits(1u))), _wgslsmith_add_vec2_i32(~firstLeadingBit(vec2<i32>(global2.x, 1i) ^ global2.xy), _wgslsmith_clamp_vec2_i32(abs(min(vec2<i32>(-35098i, global2.x), global2.yz)), abs(global2.zx), vec2<i32>(1i, 1i))));
}

