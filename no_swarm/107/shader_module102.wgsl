struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1798f, 246f, 274f, 204f);

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(14631u), 4294967295u), Struct_2(Struct_1(0u), 73733u), Struct_2(Struct_1(4294967295u), 4294967295u), Struct_2(Struct_1(1u), 0u), Struct_2(Struct_1(0u), 15507u), Struct_2(Struct_1(1u), 4294967295u), Struct_2(Struct_1(0u), 4294967295u), Struct_2(Struct_1(0u), 1u), Struct_2(Struct_1(4294967295u), 1u), Struct_2(Struct_1(66995u), 257u), Struct_2(Struct_1(4294967295u), 44600u), Struct_2(Struct_1(4294967295u), 36060u), Struct_2(Struct_1(4272u), 65877u), Struct_2(Struct_1(33482u), 0u), Struct_2(Struct_1(4294967295u), 35754u), Struct_2(Struct_1(134903u), 5803u), Struct_2(Struct_1(55683u), 1u), Struct_2(Struct_1(0u), 4294967295u), Struct_2(Struct_1(1u), 52407u), Struct_2(Struct_1(64593u), 71011u), Struct_2(Struct_1(76842u), 35896u), Struct_2(Struct_1(44682u), 0u), Struct_2(Struct_1(63280u), 21841u), Struct_2(Struct_1(0u), 1u), Struct_2(Struct_1(5743u), 103410u), Struct_2(Struct_1(82937u), 1u), Struct_2(Struct_1(2055u), 17520u), Struct_2(Struct_1(0u), 4294967295u), Struct_2(Struct_1(4294967295u), 4294967295u));

var<private> global2: array<u32, 2>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = firstLeadingBit(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(45395u, arg_0.a), vec2<u32>(2133u, 11027u)) >> (min(0u, 40961u) % 32u))));
    let var_1 = false;
    let var_2 = !var_1 && true;
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1346f, _wgslsmith_f_op_f32(-534f + global0.x));
    var var_3 = !select(select(vec2<bool>(!var_1, var_1), !vec2<bool>(var_1, false), firstLeadingBit(u_input.b) < _wgslsmith_dot_vec4_i32(vec4<i32>(-40191i, -1i, u_input.b, 51727i), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b))), select(vec2<bool>(global0.x >= 1566f, var_1), vec2<bool>(false, any(vec3<bool>(var_2, var_2, true))), select(!var_1, false, !var_1)), !vec2<bool>(select(var_2, true, var_2), false != var_1));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1324f) * global0.x)), global0.x, true)), _wgslsmith_f_op_f32(floor(global0.x)), global0.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_1 | _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~min(1u, u_input.a)), ~(~vec2<u32>(0u, global2[_wgslsmith_index_u32(arg_1.x, 2u)])));
    let var_1 = Struct_2(arg_0.a, 18624u);
    var var_2 = Struct_1(var_0.x >> (arg_0.a.a % 32u));
    global1 = array<Struct_2, 29>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_1.a)))) + vec4<f32>(-283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), 1374f, global0.x));
    return Struct_1(var_1.a.a << (~1u % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec3<i32> {
    var var_0 = ~max(~(~_wgslsmith_add_vec3_u32(vec3<u32>(20515u, global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(26298u, 2u)]), vec3<u32>(5971u, 49425u, arg_1))), ~select(~vec3<u32>(u_input.a, u_input.a, arg_1), countOneBits(vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(77638u, 2u)])), true));
    var var_1 = Struct_2(func_2(global1[_wgslsmith_index_u32(47802u << (reverseBits(var_0.x) % 32u), 29u)], ~vec2<u32>(0u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.a, 2u)], 0u))), countOneBits(~((var_0.x | 28852u) >> (0u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -1024f));
    let var_3 = countOneBits(vec3<i32>(-17155i, _wgslsmith_clamp_i32(u_input.b, u_input.b, ~32084i), u_input.b) | ((_wgslsmith_div_vec3_i32(vec3<i32>(4647i, u_input.b, 35691i), vec3<i32>(1i, u_input.b, 0i)) & ~vec3<i32>(0i, u_input.b, u_input.b)) & ~vec3<i32>(0i, u_input.b, -19557i)));
    var_1 = Struct_2(func_2(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(25610u), 2u)] << (abs(~0u) % 32u), 29u)], _wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.zy) | (var_0.yz | var_0.xx), vec2<u32>(abs(0u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 41767u)))), 1u);
    return reverseBits(firstLeadingBit(vec3<i32>(var_3.x, var_3.x, max(-var_3.x, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(34277u);
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-28424i, -2147483647i, u_input.b)), func_1(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), var_1.a)), u_input.b, -17318i, max(~_wgslsmith_add_i32(u_input.b, u_input.b), firstTrailingBit(1i))), firstLeadingBit(vec4<i32>(u_input.b, firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, u_input.b)), -24750i, _wgslsmith_mult_i32(u_input.b, -1i << (var_0.a % 32u)))));
    let var_3 = vec3<bool>(any(vec4<bool>(any(vec3<bool>(true, true, false)) && true, all(vec2<bool>(true, true)), true, true)), 207f < _wgslsmith_f_op_f32(abs(global0.x)), true);
    var var_4 = global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_div_u32(77956u | abs(var_1.a), ~15108u)), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b << (u_input.a % 32u));
}

