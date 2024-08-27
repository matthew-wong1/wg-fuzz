struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

var<private> global3: array<vec4<bool>, 21>;

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global2 = vec3<i32>(0i, u_input.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, 2911i, u_input.b, -2147483647i), vec4<i32>(2147483647i, -37392i, -72581i, -10273i)), _wgslsmith_add_vec4_i32(vec4<i32>(-10753i, u_input.b, -2147483647i, -24665i), vec4<i32>(-14030i, u_input.b, global2.x, 53427i))), global2.x) & 11603i);
    global0 = global2.x;
    var var_0 = Struct_2(firstLeadingBit(global1.a));
    let var_1 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), -22864i < _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -1i, 20135i, global2.x), vec4<i32>(global2.x, 0i, -1i, -1i))), false & all(global3[_wgslsmith_index_u32(global1.a, 21u)]));
    let var_2 = Struct_1(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -4866i, 50274i, -14686i), vec4<i32>(global2.x, -2147483647i, global2.x, -2147483647i)) | _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, global2.x, global2.x)), vec4<i32>(u_input.b, u_input.b, u_input.b, 0i) << (vec4<u32>(1u, 6287u, u_input.a, global1.a) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b, -50857i, u_input.b, 1i)))), ~((~vec4<u32>(52770u, 1u, var_0.a, var_0.a) & vec4<u32>(var_0.a, global1.a, 1u, 27936u)) >> (abs(vec4<u32>(22372u, global1.a, 4294967295u, 1u)) % vec4<u32>(32u))), var_0.a >= global1.a, 759f);
    return -1i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(u_input.a);
    global2 = vec3<i32>(~(~func_3()), abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(-11131i, global2.x), vec2<i32>(1i, u_input.b))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-42746i, global2.x, _wgslsmith_sub_i32(8780i, -108391i), abs(1i)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.x, u_input.b, -1i, -3850i) << (vec4<u32>(21151u, global1.a, 0u, 0u) % vec4<u32>(32u)), vec4<i32>(2147483647i, global2.x, u_input.b, u_input.b) | vec4<i32>(10305i, global2.x, u_input.b, -43023i))));
    let var_1 = Struct_1(vec4<i32>((func_3() | firstLeadingBit(global2.x)) | abs(-34769i), global2.x, ~(-1i), global2.x), ~(~firstLeadingBit(select(vec4<u32>(1u, 53265u, global1.a, u_input.a), vec4<u32>(25624u, 19488u, 1u, global1.a), false))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))), global4.x);
    global4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_div_f32(2110f, global4.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.d)), global4.x))), 584f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(global4.x, 230f, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-812f, 962f, false)) * _wgslsmith_f_op_f32(-var_1.d))))));
    let var_2 = min(var_1.a.yx, var_1.a.xz);
    return Struct_1(vec4<i32>(func_3() ^ min(0i, -1i), max(firstTrailingBit(max(-24210i, u_input.b)), _wgslsmith_dot_vec3_i32(var_1.a.wxz, countOneBits(var_1.a.zxx))), -(~(-2147483647i)) << (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(8724u, u_input.a, u_input.a)), var_1.b.xzy >> (var_1.b.ywy % vec3<u32>(32u))) % 32u), ~(~(~(-1i)))), var_1.b, !(!(!(!var_1.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global4.x)))))));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    return abs(firstLeadingBit(max(0u, ~var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(17233u >> (func_1() % 32u), global1.a);
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.a, 1u, 14087u) >> (vec3<u32>(31048u, 4233u, u_input.a) % vec3<u32>(32u)), vec3<u32>(func_1(), ~global1.a, 1u), vec3<bool>(true, true, true)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(u_input.a, 4294967295u, 9883u), vec3<u32>(global1.a, u_input.a, global1.a), vec3<bool>(false, false, true)))));
    let var_2 = Struct_2(abs(~u_input.a));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(-global4.x))), 679f, 1000f, _wgslsmith_f_op_f32(global4.x + global4.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1622f, -1000f, -362f) + vec4<f32>(-829f, global4.x, global4.x, -127f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.x, global4.x, global4.x, 533f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1069f, global4.x, 1223f, 704f))))))));
    global0 = global2.x;
    let var_5 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.x, global4.x, global4.x))), var_4.yxw))), var_4.wyz, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), true))), select(_wgslsmith_div_u32(21899u, 1u >> (firstTrailingBit(0u) % 32u)), func_1(), true), _wgslsmith_f_op_vec3_f32(sign(var_4.wzx)));
}

