struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: i32;

var<private> global2: array<u32, 5>;

var<private> global3: array<Struct_1, 12>;

var<private> global4: bool = true;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    global1 = _wgslsmith_clamp_i32(-25263i ^ u_input.b.x, -abs((u_input.b.x | u_input.b.x) << (_wgslsmith_add_u32(15152u, global2[_wgslsmith_index_u32(u_input.d.x, 5u)]) % 32u)), u_input.b.x);
    var var_0 = _wgslsmith_f_op_f32(224f - _wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    global4 = ~u_input.a.x >= u_input.c;
    global1 = u_input.b.x;
    var var_1 = u_input.b.xx >> (_wgslsmith_mult_vec2_u32(u_input.a.xz, vec2<u32>(firstLeadingBit(u_input.c) >> (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xy), 5u)] % 32u), ~u_input.c)) % vec2<u32>(32u));
    return u_input.a.zy;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global2 = array<u32, 5>();
    global3 = array<Struct_1, 12>();
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(arg_0.a.x, 5u)]), ~136u), _wgslsmith_mult_vec2_u32(func_3(vec4<f32>(2488f, -2612f, 1217f, -561f)), ~u_input.a.xx)), 12u)];
    var var_1 = _wgslsmith_f_op_f32(select(-660f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1214f * 857f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(124f, 1000f), 1088f)))), all(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false)), true))));
    var var_2 = u_input.b.x;
    return -2147483647i;
}

fn func_1() -> Struct_2 {
    let var_0 = 4294967295u;
    global0 = array<vec3<u32>, 4>();
    var var_1 = -(vec4<i32>(abs(firstLeadingBit(33179i)), u_input.b.x, abs(38025i), firstLeadingBit(u_input.b.x)) >> (u_input.d % vec4<u32>(32u)));
    global2 = array<u32, 5>();
    let var_2 = _wgslsmith_div_i32(countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(17905i, 47869i, u_input.b.x), vec3<i32>(-29992i, u_input.b.x, u_input.b.x)), 2147483647i)) | (firstTrailingBit(func_2(global3[_wgslsmith_index_u32(40148u, 12u)])) & _wgslsmith_sub_i32(~(-8408i), u_input.b.x)), -u_input.b.x);
    return Struct_2(vec2<bool>(true, true), Struct_1(u_input.d.zzz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec2<f32>(-978f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(388f, 398f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(993f, -370f), _wgslsmith_f_op_f32(-803f * 948f)))), _wgslsmith_f_op_f32(-1362f * -1000f)));
    let var_2 = global3[_wgslsmith_index_u32(1u, 12u)];
    var_0 = Struct_2(!(!func_1().a), Struct_1(_wgslsmith_mod_vec3_u32(firstLeadingBit(var_2.a ^ vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(var_2.a.x, 5u)], var_2.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.x, 15661u, u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b.a.x, 5u)], 5u)], var_2.a.x, 429u), var_2.a)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-511f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(firstLeadingBit(countOneBits(2147483647i)), ~u_input.b.x), var_2.a.yz, u_input.d.yy, vec2<i32>(u_input.b.x, ~(~1i)), ~firstTrailingBit(vec3<i32>(min(15950i, 0i), max(25935i, u_input.b.x), u_input.b.x)));
}

