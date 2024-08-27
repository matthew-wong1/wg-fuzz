struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<u32>(132122u, 13769u, 1u, 1u)), Struct_1(vec4<u32>(0u, 34770u, 1u, 0u)), Struct_1(vec4<u32>(1u, 10895u, 0u, 40625u)), Struct_1(vec4<u32>(779u, 1u, 53140u, 4294967295u)), Struct_1(vec4<u32>(67068u, 46704u, 21757u, 0u)), Struct_1(vec4<u32>(21749u, 32320u, 4294967295u, 14325u)), Struct_1(vec4<u32>(69378u, 4294967295u, 94627u, 21837u)), Struct_1(vec4<u32>(1u, 4294967295u, 44980u, 1u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 18619u)), Struct_1(vec4<u32>(1u, 0u, 46695u, 20673u)), Struct_1(vec4<u32>(4294967295u, 51026u, 20491u, 4294967295u)), Struct_1(vec4<u32>(41366u, 29800u, 1u, 0u)), Struct_1(vec4<u32>(0u, 4533u, 0u, 0u)), Struct_1(vec4<u32>(10574u, 60960u, 4294967295u, 1u)), Struct_1(vec4<u32>(67626u, 0u, 74665u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(48681u, 0u, 19772u, 30058u)), Struct_1(vec4<u32>(0u, 55517u, 1354u, 1u)), Struct_1(vec4<u32>(1u, 4294967295u, 6755u, 1u)), Struct_1(vec4<u32>(93005u, 0u, 12187u, 18844u)), Struct_1(vec4<u32>(13203u, 0u, 6895u, 59548u)), Struct_1(vec4<u32>(4294967295u, 16330u, 0u, 1u)), Struct_1(vec4<u32>(11812u, 67183u, 49447u, 0u)), Struct_1(vec4<u32>(4294967295u, 10716u, 11245u, 0u)), Struct_1(vec4<u32>(605u, 48017u, 1u, 1u)), Struct_1(vec4<u32>(24244u, 1u, 51622u, 5195u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 24459u)), Struct_1(vec4<u32>(14507u, 0u, 0u, 1u)), Struct_1(vec4<u32>(40693u, 1u, 0u, 20997u)), Struct_1(vec4<u32>(0u, 0u, 72375u, 18142u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 607u)), Struct_1(vec4<u32>(40189u, 48245u, 1u, 30689u)));

var<private> global1: array<Struct_1, 3>;

var<private> global2: u32 = 23743u;

var<private> global3: array<f32, 4> = array<f32, 4>(-491f, 751f, 1905f, 639f);

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    var var_0 = u_input.b.wyz;
    var var_1 = global1[_wgslsmith_index_u32(~(~select(~1u, global4.a.x, arg_1)), 3u)];
    let var_2 = _wgslsmith_mult_vec2_u32(var_1.a.wx, ~(~vec2<u32>(~52434u, 28868u >> (global4.a.x % 32u))));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    var_0 = select(u_input.b.xyw, vec3<i32>(~firstLeadingBit(arg_0.x << (24745u % 32u)), -1i | ~select(var_0.x, 25732i, arg_1), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), true);
    return -1i;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1;
    global4 = Struct_1(~(~min(~vec4<u32>(14324u, global4.a.x, 4294967295u, 0u), vec4<u32>(var_0.a.x, global4.a.x, 0u, 30552u))));
    let var_1 = u_input.b.zz;
    global0 = array<Struct_1, 32>();
    let var_2 = var_1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~arg_0.x, 4u)])));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = any(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)))) && (u_input.a != 17361i);
    global2 = ~(~global4.a.x);
    var var_1 = -1i;
    let var_2 = arg_2.x;
    let var_3 = _wgslsmith_mult_i32(arg_0, abs(24720i));
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32((~max(global4.a.x, 4294967295u) << (_wgslsmith_div_u32(select(48898u, global4.a.x, false), _wgslsmith_mod_u32(42879u, global4.a.x)) % 32u)) ^ _wgslsmith_add_u32(abs(~global4.a.x), _wgslsmith_mod_u32(54761u, global4.a.x)), global4.a.x), 32u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.a, u_input.a);
    global2 = _wgslsmith_dot_vec3_u32(abs(arg_0.a.zzy), ~vec3<u32>(global4.a.x, ~_wgslsmith_mult_u32(57637u, arg_1.x), arg_1.x));
    global4 = Struct_1(countOneBits(global4.a));
    global4 = func_4(_wgslsmith_dot_vec3_i32(u_input.b.zxy, u_input.b.wzw), global3[_wgslsmith_index_u32(arg_1.x, 4u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(countOneBits(~0u), 4u)], global3[_wgslsmith_index_u32(~1u, 4u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(arg_0.a.x, 4u)])))), global3[_wgslsmith_index_u32(arg_0.a.x, 4u)])));
    var var_1 = vec4<bool>(true, all(vec2<bool>(true, true)), false, true);
    return Struct_1(~(vec4<u32>(1u, _wgslsmith_mod_u32(arg_1.x, global4.a.x), 1u, reverseBits(arg_1.x)) | arg_0.a));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global4.a;
    var var_1 = func_5(func_4(func_2(vec3<i32>(~u_input.a, 1i, u_input.a ^ 23691i), any(vec2<bool>(false, true)), u_input.b.zw >> (~global4.a.zz % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.a.x, 4u)] - _wgslsmith_f_op_f32(func_3(vec3<u32>(global4.a.x, 100357u, 1u), global0[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(vec4<u32>(3763u, 1u, global4.a.x, 4294967295u)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-2518f, global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], -569f), vec4<f32>(825f, arg_0, arg_0, -279f))))))), global4.a.xz);
    let var_2 = func_5(func_4(_wgslsmith_mod_i32(~select(-1i, u_input.a, false), _wgslsmith_mod_i32(u_input.a | 17177i, u_input.a)), global3[_wgslsmith_index_u32(3852u ^ var_1.a.x, 4u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1188f, -214f, -1340f, global3[_wgslsmith_index_u32(31924u, 4u)])))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -359f, 724f, 1200f) * vec4<f32>(-832f, -1492f, global3[_wgslsmith_index_u32(68489u, 4u)], 2141f)), _wgslsmith_div_vec4_f32(vec4<f32>(-909f, global3[_wgslsmith_index_u32(4124u, 4u)], arg_0, 352f), vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 4u)], 158f, arg_0, 282f)))))), vec2<u32>(~var_1.a.x, ~(~(~var_1.a.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-671f)));
    var_1 = var_2;
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(abs(600f)));
    var var_1 = func_4(~(u_input.b.x ^ (max(1i, u_input.b.x) | u_input.a)), 2062f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(func_5(global0[_wgslsmith_index_u32(1u, 32u)], var_0.a.yw).a.x, 4u)], _wgslsmith_f_op_f32(floor(698f)), 1052f, global3[_wgslsmith_index_u32(32326u, 4u)]))));
    var var_2 = global1[_wgslsmith_index_u32(var_1.a.x, 3u)];
    let var_3 = Struct_1(firstTrailingBit(~var_0.a));
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.a.zww, var_3, Struct_1(vec4<u32>(var_1.a.x, 123796u, 24324u, 1u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(global4.a.x, 4u)], global3[_wgslsmith_index_u32(var_2.a.x, 4u)])) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)]))), -709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 4u)] - -399f))))));
    var var_5 = vec2<bool>(true, !all(vec3<bool>(true, true, true)));
    let var_6 = var_5.x;
    global0 = array<Struct_1, 32>();
    var var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zwy & max(~_wgslsmith_add_vec3_u32(global4.a.zyz, vec3<u32>(26952u, var_0.a.x, var_7.a.x)), var_2.a.wzw));
}

