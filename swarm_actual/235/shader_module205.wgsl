struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4>;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(2147483647i, -33449i), vec2<i32>(27792i, -32689i), vec2<i32>(-44393i, -17454i), vec2<i32>(-35501i, -33020i), vec2<i32>(-49090i, -1i), vec2<i32>(-31848i, 3321i), vec2<i32>(2147483647i, 0i), vec2<i32>(-39948i, 2147483647i), vec2<i32>(-1878i, i32(-2147483648)), vec2<i32>(42765i, 1i), vec2<i32>(24156i, -12297i), vec2<i32>(-25168i, 1i), vec2<i32>(1i, 1i), vec2<i32>(13487i, -46588i), vec2<i32>(2147483647i, 15411i), vec2<i32>(0i, -28298i), vec2<i32>(-9487i, -1147i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-12332i, 38882i), vec2<i32>(2147483647i, 63640i), vec2<i32>(2147483647i, 12703i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-2905i, -62546i), vec2<i32>(14984i, 0i), vec2<i32>(i32(-2147483648), -23521i), vec2<i32>(27353i, 1i));

var<private> global2: u32 = 99389u;

var<private> global3: vec2<u32>;

var<private> global4: array<bool, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(u_input.a.x);
    global1 = array<vec2<i32>, 28>();
    return var_0.a;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    global0 = array<vec4<i32>, 4>();
    var var_0 = Struct_3(-arg_2);
    let var_1 = !(!(422f != _wgslsmith_f_op_f32(-arg_1.b)));
    return -15824i;
}

fn func_1() -> StorageBuffer {
    var var_0 = firstTrailingBit(_wgslsmith_mod_i32(func_2(), countOneBits(_wgslsmith_add_i32(func_3(Struct_3(u_input.b), Struct_2(vec2<bool>(false, false), -787f), 0i, vec2<u32>(0u, global3.x)), -2147483647i))));
    global1 = array<vec2<i32>, 28>();
    let var_1 = Struct_2(select(!vec2<bool>(!global4[_wgslsmith_index_u32(57333u, 24u)], false), vec2<bool>(global4[_wgslsmith_index_u32(global3.x, 24u)], true), select(vec2<bool>(false, any(vec3<bool>(global4[_wgslsmith_index_u32(global3.x, 24u)], global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(global3.x, 24u)]))), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)] | true, false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)));
    global1 = array<vec2<i32>, 28>();
    let var_2 = select(vec4<bool>(global4[_wgslsmith_index_u32((68479u << (~global3.x % 32u)) ^ firstLeadingBit(global3.x << (global3.x % 32u)), 24u)], any(vec2<bool>(2147483647i >= u_input.b, true)), any(vec3<bool>(any(vec3<bool>(true, var_1.a.x, false)), all(var_1.a), true)), var_1.a.x), !select(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, false, false), var_1.a.x), vec4<bool>(true, all(vec4<bool>(!var_1.a.x, global4[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 52398u), 24u)], global4[_wgslsmith_index_u32(4294967295u | global3.x, 24u)])), any(select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(global3.x, 24u)], true), !vec3<bool>(true, true, var_1.a.x), select(vec3<bool>(false, global4[_wgslsmith_index_u32(16147u, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(global3.x, 24u)], global4[_wgslsmith_index_u32(global3.x, 24u)], true), var_1.a.x))), true));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b, var_1.b, -255f, 333f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1352f, -122f, var_1.b, -991f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1002f, -294f, 652f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b, 277f, var_1.b, var_1.b))) + vec4<f32>(var_1.b, var_1.b, var_1.b, 103f)))), -558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1104f, 803f) + _wgslsmith_f_op_f32(trunc(1259f))) + -1356f) * _wgslsmith_f_op_f32(3003f - var_1.b)), ~(~(vec4<u32>(4294967295u, 0u, 4294967295u, 48708u) & vec4<u32>(global3.x, global3.x, 0u, global3.x))), vec2<f32>(var_1.b, var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 57034u) >> (vec2<u32>(global3.x, 10173u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(31210u, global3.x), vec2<u32>(global3.x, 4294967295u))));
    let var_0 = global3.x < 1u;
    global4 = array<bool, 24>();
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, global3.x) ^ vec2<u32>(0u, global3.x), ~vec2<u32>(48301u, 34742u), vec2<bool>(global4[_wgslsmith_index_u32(global3.x, 24u)], true)), vec2<u32>(~0u, 0u)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(14088u, global3.x), vec2<u32>(global3.x, 41291u))) << (~(vec2<u32>(global3.x, 99789u) & vec2<u32>(global3.x, global3.x)) % vec2<u32>(32u))), ~vec2<u32>(~global3.x, ~global3.x) >> (~vec2<u32>(global3.x, _wgslsmith_mod_u32(86923u, 7804u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = func_1();
}

