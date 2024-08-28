struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
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

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<bool, 24> = array<bool, 24>(false, false, false, false, true, false, true, true, false, false, false, false, true, false, false, false, false, true, true, true, false, false, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(16551i, abs(abs(u_input.d)))), 11786i, ~_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, 1i) & _wgslsmith_add_i32(-u_input.a.x << (~u_input.e.x % 32u), _wgslsmith_sub_i32(reverseBits(55460i), max(u_input.c.x, u_input.c.x))), _wgslsmith_dot_vec3_i32(-max(u_input.a, u_input.c), ~vec3<i32>(5937i, _wgslsmith_div_i32(-23908i, -24469i), 2147483647i)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1510f), -481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), 1f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1539f, 949f, global0.x) * vec4<f32>(-419f, 3196f, -171f, global0.x)), vec4<f32>(-1145f, global0.x, 389f, -146f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 630f, -2172f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, global0.x, global0.x, -184f), vec4<f32>(-310f, global0.x, global0.x, global0.x))))))));
    global2 = array<bool, 24>();
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-43013i, _wgslsmith_sub_i32(abs(~42563i), 2147483647i)), var_0.xx);
    let var_2 = var_0.x | ~u_input.a.x;
    return min(_wgslsmith_mult_vec4_u32(reverseBits(~select(vec4<u32>(38684u, u_input.e.x, 4294967295u, 12659u), vec4<u32>(u_input.e.x, u_input.e.x, 1u, 73810u), false)), select(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x | 9786u, _wgslsmith_sub_u32(u_input.e.x, 43188u)), abs(min(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 9110u), vec4<u32>(52627u, 2709u, 72227u, u_input.e.x))), vec4<bool>(global2[_wgslsmith_index_u32(abs(u_input.e.x), 24u)], !global2[_wgslsmith_index_u32(u_input.e.x, 24u)], false, false))), vec4<u32>(u_input.e.x, ~1u, 1u, ~(~1u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -155f);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f + global0.x))), -1149f, global0.x, _wgslsmith_f_op_f32(floor(1565f))));
    let var_1 = false;
    var var_2 = _wgslsmith_add_vec4_u32(arg_1, func_3()) >> ((min(~max(arg_1, arg_1), arg_1) << (arg_1 % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_3 = u_input.b.x;
    return -u_input.b.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: f32) -> i32 {
    global1 = array<Struct_1, 8>();
    var var_0 = true;
    global2 = array<bool, 24>();
    let var_1 = Struct_1(countOneBits(vec3<i32>(i32(-1i) * -1054i, func_2(global1[_wgslsmith_index_u32(u_input.e.x, 8u)], vec4<u32>(0u, 1u, 49722u, 4294967295u) << (vec4<u32>(1u, u_input.e.x, 56624u, u_input.e.x) % vec4<u32>(32u))), ~3276i)), u_input.a);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2, -1000f, arg_2)) - vec4<f32>(arg_2, 1128f, arg_2, -173f)), _wgslsmith_div_vec4_f32(vec4<f32>(513f, -282f, -582f, -447f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1122f, global0.x, 748f, global0.x))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(256f))), _wgslsmith_f_op_f32(534f - arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -457f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-566f, global0.x, 116f, -1000f)) + vec4<f32>(global0.x, 510f, arg_2, global0.x))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.d, u_input.c.x) ^ _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), countOneBits(i32(-1i) * -21328i), abs(1i)), u_input.c.x, _wgslsmith_mult_i32(min(~u_input.c.x, i32(-1i) * -34971i), u_input.a.x)), vec3<i32>(-1i, ~_wgslsmith_mod_i32(reverseBits(u_input.a.x), -16684i), func_1(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(17498u, 24u)], true), 6084i, 1000f)));
    var var_1 = ~((i32(-1i) * -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)) | 0i);
    var_0 = Struct_1(u_input.a, select(vec3<i32>(-2147483647i, var_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(36662i, -32692i, -1i, -1i), vec4<i32>(62930i, -8727i, 1i, 2236i)) >> (4294967295u % 32u)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.x, 16296i, -17083i), ~var_0.b)), all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], true))));
    var var_2 = ~firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(~1i, 38329i), -1i, var_0.b.x, reverseBits(reverseBits(-25218i))));
    var var_3 = -(~vec3<i32>(func_1(vec3<bool>(global2[_wgslsmith_index_u32(96125u, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)]), -1i, global0.x), 90182i, -13706i) & var_2.zww);
    let var_4 = !(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], true, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], true)), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], true, true, global2[_wgslsmith_index_u32(u_input.e.x, 24u)]), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(u_input.e.x, 24u)]), false), all(vec4<bool>(global2[_wgslsmith_index_u32(1511u, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(4898u, 24u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(34011u, 24u)], true, true), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)]))), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 24u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(17941u, 24u)], true, true, global2[_wgslsmith_index_u32(0u, 24u)]), global2[_wgslsmith_index_u32(u_input.e.x, 24u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(40711u, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(16878u, 24u)], false, false)), !global2[_wgslsmith_index_u32(u_input.e.x, 24u)])));
    let var_5 = u_input.e.x > ~680u;
    global2 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

