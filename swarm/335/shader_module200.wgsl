struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<u32>(0u, 112403u), vec3<u32>(19320u, 76791u, 8621u), vec3<f32>(671f, -267f, 710f), vec2<i32>(63i, -1i), true), Struct_2(vec2<u32>(85551u, 1u), vec3<u32>(0u, 40282u, 74723u), vec3<f32>(-467f, -1725f, 784f), vec2<i32>(-23379i, 1147i), true));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global2: array<vec2<u32>, 6>;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_sub_vec4_u32(~firstTrailingBit(~vec4<u32>(6679u, 0u, 1u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(~1576u, 43786u, ~4294967295u, 11916u), vec4<u32>(abs(1u), 1u, ~4294967295u, 0u)));
    let var_1 = arg_1;
    let var_2 = Struct_1(arg_1.a);
    global1 = array<Struct_1, 31>();
    global3 = u_input.a;
    return (false && all(vec4<bool>(!var_2.a, any(vec2<bool>(var_1.a, arg_1.a)), var_1.a, true))) || true;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_mod_u32(~0u, ~0u) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 45335u)))), 2u)];
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(-11137i, 12956i), u_input.a);
    var var_2 = ~(~reverseBits(~min(var_0.b, vec3<u32>(1u, 1u, 47808u))));
    global1 = array<Struct_1, 31>();
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1153f + _wgslsmith_f_op_f32(-1322f * 567f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1608f))) - var_0.c.zx);
    return 1u;
}

fn func_1() -> u32 {
    var var_0 = vec2<bool>(!all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(868f, 1742f)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -649f))))));
    global3 = u_input.a;
    let var_1 = Struct_2(~vec2<u32>(1u, ~1u) >> (global2[_wgslsmith_index_u32(abs(52781u), 6u)] % vec2<u32>(32u)), vec3<u32>(1u, func_3(func_2(vec3<f32>(-176f, 1141f, -1602f), global1[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_div_u32(~63625u, 1u)) ^ abs(~vec3<u32>(1u, 1u, 1u)), vec3<f32>(1027f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f * -1116f)))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), !select(var_0.x, true, var_0.x)))), u_input.b.zz, true);
    global2 = array<vec2<u32>, 6>();
    let var_2 = _wgslsmith_sub_i32(abs(_wgslsmith_div_i32(u_input.a, select(var_1.d.x, _wgslsmith_mod_i32(u_input.a, 6397i), false))), reverseBits(u_input.b.x));
    return countOneBits(var_1.b.x ^ var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(abs(~select(max(14067u, 95327u), ~45595u, true) ^ ~func_1()), 31u)];
    global1 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_f_op_f32(min(678f, 1787f));
    global3 = reverseBits(~_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, u_input.a), reverseBits(u_input.b.x)));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(~(-23107i)), u_input.a), u_input.b.zw);
    global1 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(var_1, var_1)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1249f, var_1), vec2<f32>(var_1, var_1), var_0.a))))), 66701u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + var_1)))));
}

