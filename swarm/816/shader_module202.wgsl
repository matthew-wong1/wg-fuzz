struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(48416u, 0u, 1507u), vec4<bool>(false, false, false, true));

var<private> global1: vec3<i32>;

var<private> global2: array<u32, 25> = array<u32, 25>(0u, 69691u, 32502u, 4294967295u, 19849u, 10359u, 41268u, 26091u, 1u, 101190u, 0u, 0u, 0u, 65793u, 4294967295u, 1u, 37171u, 21454u, 37196u, 1u, 59200u, 71269u, 21793u, 0u, 4294967295u);

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(4294967295u, 1989u, 97u), vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(32702u, 33215u, 1u), vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(25276u, 19221u, 97903u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(0u, 4294967295u, 6789u), vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(0u, 1u, 0u), vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(4458u, 30929u, 45552u), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(24489u, 4294967295u, 0u), vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(0u, 31917u, 0u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(7555u, 51357u, 73075u), vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(32365u, 0u, 49601u), vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(1u, 4294967295u, 29148u), vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(13611u, 1u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(91583u, 0u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(44113u, 1u, 1991u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(14933u, 31726u, 0u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(4294967295u, 12009u, 39961u), vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(30533u, 7407u, 4294967295u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(8402u, 4294967295u, 70168u), vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec4<bool>(false, false, true, true)), Struct_1(vec3<u32>(34717u, 1u, 12528u), vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(6559u, 107989u, 50862u), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(7201u, 4294967295u, 44558u), vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(5021u, 5238u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(1u, 0u, 1u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(0u, 4294967295u, 10101u), vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(0u, 1u, 14140u), vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(1u, 70023u, 3379u), vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(21558u, 4294967295u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(38674u, 5863u, 53800u), vec4<bool>(false, true, false, true)));

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(0u, 11834u, 0u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(4294967295u, 16913u, 4294967295u), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(1u, 66646u, 0u), vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(31960u, 1u, 54775u), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(1u, 31781u, 17865u), vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(50375u, 1u, 1u), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(4294967295u, 41755u, 54879u), vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(0u, 1u, 1u), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(0u, 20352u, 55776u), vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(4294967295u, 67271u, 56098u), vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(4294967295u, 35929u, 4294967295u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(4707u, 22838u, 8081u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(0u, 4294967295u, 31102u), vec4<bool>(true, false, true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -257f);
    global4 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_add_i32(global1.x, ~min(max(global1.x, 2147483647i), u_input.a >> (0u % 32u))) << (countOneBits(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(19163u, 4294967295u), min(global0.a.yy, global0.a.zy))), 25u)]) % 32u);
    return _wgslsmith_div_i32(23461i, _wgslsmith_mult_i32(1i, 0i) ^ ~(-global1.x | 70554i));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = vec4<i32>(-func_3(), global1.x, global1.x, select(-(~_wgslsmith_mod_i32(u_input.a, global1.x)), global1.x, !global0.b.x));
    global4 = array<Struct_1, 14>();
    let var_1 = -1000f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(559f)), _wgslsmith_f_op_f32(-766f * var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 1802f) + var_1)), vec3<f32>(-724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1239f))), _wgslsmith_f_op_f32(-761f * var_1))));
    let var_3 = vec3<bool>(all(vec2<bool>(!global0.b.x, !global0.b.x)) | !global0.b.x, select(any(select(global0.b.zz, select(global0.b.zx, global0.b.yx, true), global0.b.xy)), ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(9973u, 25u)], 25u)] >= ~3172u, !(!global0.b.x)), false);
    return global1.x >= firstTrailingBit(1i);
}

fn func_1() -> i32 {
    global2 = array<u32, 25>();
    var var_0 = select(vec4<bool>(select(reverseBits(53264u) != (global0.a.x & 46967u), func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, -1i, -1i), vec3<i32>(-32036i, 59141i, u_input.a))), all(select(global0.b.wz, global0.b.yy, vec2<bool>(global0.b.x, global0.b.x)))), true, !global0.b.x, !global0.b.x), vec4<bool>(true, false, all(vec2<bool>(global0.b.x & true, all(global0.b.zxw))), select(global0.b.x, true, global0.b.x)), vec4<bool>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(662f)) * _wgslsmith_f_op_f32(sign(599f))) == -1961f, func_2(vec3<i32>(abs(u_input.a), select(global1.x, 53780i, false), _wgslsmith_mult_i32(2147483647i, global1.x)))));
    return _wgslsmith_mult_i32(~u_input.a, ~(-global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(global0.a.x, 31u)];
    let var_0 = 1674f;
    global2 = array<u32, 25>();
    var var_1 = _wgslsmith_add_i32(func_1(), func_3());
    let var_2 = any(select(vec3<bool>(abs(49113i) <= _wgslsmith_dot_vec2_i32(global1.xx, global1.yx), false, false), !global0.b.yzy, any(select(!vec4<bool>(global0.b.x, global0.b.x, false, false), select(global0.b, vec4<bool>(true, global0.b.x, false, false), vec4<bool>(false, global0.b.x, false, false)), var_0 >= var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1.x | global1.x, ~(~(-37239i)), 0i) << ((~countOneBits(vec3<u32>(0u, global0.a.x, global2[_wgslsmith_index_u32(27149u, 25u)])) << (global0.a % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, var_0, -818f))))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 578f, var_0))))))));
}

