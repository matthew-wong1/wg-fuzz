struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 25>;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(true, Struct_1(vec2<u32>(1u, 4294967295u), true, true)), Struct_2(false, Struct_1(vec2<u32>(37360u, 0u), false, false)), Struct_2(true, Struct_1(vec2<u32>(13423u, 4294967295u), false, false)), Struct_2(true, Struct_1(vec2<u32>(1u, 1561u), false, false)), Struct_2(false, Struct_1(vec2<u32>(24160u, 0u), true, true)), Struct_2(false, Struct_1(vec2<u32>(28360u, 40518u), true, true)), Struct_2(false, Struct_1(vec2<u32>(43525u, 0u), false, true)), Struct_2(false, Struct_1(vec2<u32>(1u, 0u), true, false)));

var<private> global4: array<bool, 23>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = true;
    global3 = array<Struct_2, 8>();
    var var_1 = i32(-1i) * -2147483647i;
    global4 = array<bool, 23>();
    global1 = arg_1;
    return global2[_wgslsmith_index_u32(u_input.e, 25u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    global1 = arg_1.d;
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.zyz)))), arg_0.yyy);
    global0 = vec2<bool>(true, func_2((any(vec3<bool>(global0.x, global0.x, arg_1.d.b)) | global1.c) || true, arg_1.c.b, func_2((arg_1.e.x << (arg_1.e.x % 32u)) >= ~u_input.d.x, arg_1.c.b, Struct_1(~u_input.d.yy, true, global1.b), vec2<bool>(global1.c & arg_1.d.b, all(vec3<bool>(false, false, global1.b)))).c.b, select(vec2<bool>(u_input.b.x <= arg_1.b, global4[_wgslsmith_index_u32(1919u, 23u)]), vec2<bool>(global0.x, !global4[_wgslsmith_index_u32(0u, 23u)]), vec2<bool>(global1.c, global1.c))).d.c);
    var var_1 = _wgslsmith_div_f32(1153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-949f)), _wgslsmith_f_op_f32(arg_0.x - -133f)))));
    global0 = !select(vec2<bool>(u_input.a < (u_input.a >> (126259u % 32u)), global4[_wgslsmith_index_u32(~u_input.e, 23u)]), select(!select(vec2<bool>(false, global1.b), vec2<bool>(global1.c, true), true), vec2<bool>(true, all(vec3<bool>(arg_1.d.b, false, global1.c))), !(!vec2<bool>(global1.b, global0.x))), vec2<bool>(true, global0.x));
    return -489f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) * 1f) * arg_0.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = !select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 23u)], (1u ^ u_input.c) > _wgslsmith_sub_u32(global1.a.x, arg_2.d.a.x), func_3(vec4<f32>(132f, 1112f, arg_0.x, arg_0.x), global2[_wgslsmith_index_u32(~4294967295u, 25u)])), vec3<bool>(false, false, arg_2.c.b.c || (u_input.a <= var_0)), true);
    global4 = array<bool, 23>();
    let var_2 = !(!(!global0.x));
    let var_3 = (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), 1907f, any(select(vec2<bool>(true, false), vec2<bool>(true, false), arg_1.xy)))) <= -570f) | var_1.x;
    return Struct_2(false, Struct_1(u_input.b.wx, all(!select(vec4<bool>(true, true, var_2, global1.b), vec4<bool>(arg_3, false, false, var_1.x), vec4<bool>(arg_2.d.c, arg_2.c.a, false, true))), false));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<u32> {
    return vec2<u32>((arg_2.a.x >> (23185u % 32u)) >> (~(~0u) % 32u), 1u);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_3(vec2<u32>(arg_0.x >> (0u % 32u), 31472u), _wgslsmith_dot_vec2_u32(func_5(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-942f, 1068f, 390f) + vec3<f32>(-1073f, 738f, 1000f)), !vec3<bool>(global0.x, global4[_wgslsmith_index_u32(4294967295u, 23u)], false), func_2(true, Struct_1(vec2<u32>(0u, 37624u), global4[_wgslsmith_index_u32(arg_0.x, 23u)], global4[_wgslsmith_index_u32(global1.a.x, 23u)]), Struct_1(vec2<u32>(arg_0.x, arg_0.x), true, global1.c), vec2<bool>(true, arg_1)), func_3(vec4<f32>(983f, -170f, -515f, -610f), Struct_3(arg_0, 1u, global3[_wgslsmith_index_u32(25204u, 8u)], Struct_1(global1.a, global1.b, false), u_input.b))), ~vec3<i32>(u_input.a, 104361i, -2147483647i) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 2147483647i), vec3<i32>(u_input.a, 1i, u_input.a)), Struct_1(~vec2<u32>(u_input.b.x, 4294967295u), true, true)), abs(countOneBits(_wgslsmith_mult_vec2_u32(arg_0, arg_0)))), global3[_wgslsmith_index_u32(0u, 8u)], func_2(true, func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(448f, -722f, -531f) - vec3<f32>(-862f, -136f, 743f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1604f, 787f, 824f) + vec3<f32>(1142f, 361f, -1362f))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, global4[_wgslsmith_index_u32(1u, 23u)]), global1.b), func_2(!global1.c, func_4(vec3<f32>(2329f, 639f, 221f), vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(28217u, 25u)], true).b, Struct_1(vec2<u32>(62657u, 4294967295u), true, global1.c), select(vec2<bool>(true, global0.x), vec2<bool>(true, global1.c), global0.x)), all(vec2<bool>(true, false))).b, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1065f, 1000f))) * vec3<f32>(707f, -726f, 432f)), vec3<bool>(global1.b, global0.x, false), Struct_3(vec2<u32>(18129u, 0u) & arg_0, 1u, func_4(vec3<f32>(1685f, -1390f, 430f), vec3<bool>(arg_1, arg_1, global0.x), Struct_3(u_input.d.xz, 54744u, Struct_2(false, Struct_1(u_input.d.yy, global4[_wgslsmith_index_u32(u_input.c, 23u)], arg_1)), Struct_1(vec2<u32>(20859u, u_input.b.x), global4[_wgslsmith_index_u32(1u, 23u)], false), u_input.b), global4[_wgslsmith_index_u32(global1.a.x, 23u)]), func_4(vec3<f32>(-1601f, 490f, -1092f), vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 23u)], true, true), Struct_3(global1.a, 1u, Struct_2(arg_1, Struct_1(arg_0, arg_1, global4[_wgslsmith_index_u32(14139u, 23u)])), Struct_1(vec2<u32>(35241u, arg_0.x), false, global4[_wgslsmith_index_u32(global1.a.x, 23u)]), u_input.b), false).b, vec4<u32>(12562u, arg_0.x, global1.a.x, 1u) | u_input.b), false).b, vec2<bool>(func_3(vec4<f32>(422f, 1000f, -1113f, -1761f), Struct_3(global1.a, global1.a.x, global3[_wgslsmith_index_u32(0u, 8u)], Struct_1(vec2<u32>(global1.a.x, 48491u), global4[_wgslsmith_index_u32(arg_0.x, 23u)], global1.c), vec4<u32>(arg_0.x, u_input.c, 4294967295u, 113333u))), false)).d, u_input.b);
    global2 = array<Struct_3, 25>();
    var var_1 = _wgslsmith_div_f32(629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-397f, 2391f, arg_1))) + _wgslsmith_f_op_f32(-486f * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f + 706f)))));
    global0 = !select(select(!select(vec2<bool>(global1.b, true), vec2<bool>(arg_1, true), vec2<bool>(true, false)), vec2<bool>(true, !var_0.c.b.c), !(u_input.a == u_input.a)), !vec2<bool>(var_0.d.c, !global1.c), vec2<bool>(true, !select(false, global0.x, global0.x)));
    var var_2 = false;
    return !select(select(vec3<bool>(true, true, true), vec3<bool>(true, global1.c, true), select(vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 23u)], true, global1.b), select(vec3<bool>(global0.x, global1.c, false), vec3<bool>(arg_1, true, var_0.c.a), vec3<bool>(global4[_wgslsmith_index_u32(0u, 23u)], false, arg_1)), select(vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 23u)], true, global1.c), vec3<bool>(global0.x, true, arg_1), true))), vec3<bool>(true, true, true), vec3<bool>(any(!vec4<bool>(arg_1, arg_1, true, true)), true, global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~global1.a | vec2<u32>(u_input.c, 31639u), !(1i == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, 31609i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(-22012i, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)))), any(!func_1(abs(global1.a), any(vec3<bool>(global4[_wgslsmith_index_u32(49716u, 23u)], global0.x, global0.x)))));
    global4 = array<bool, 23>();
    var var_0 = global3[_wgslsmith_index_u32(global1.a.x, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-804f + -905f), select(u_input.b, vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.d.x) ^ (global1.a.x << (49621u % 32u)), ~0u, global1.a.x, 1u), select(vec4<bool>(true, true, true & global0.x, all(vec2<bool>(true, true))), select(vec4<bool>(true, global0.x, global1.b, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, global0.x, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 23u)], false, true, true), vec4<bool>(global4[_wgslsmith_index_u32(global1.a.x, 23u)], global1.b, true, global4[_wgslsmith_index_u32(4294967295u, 23u)]), all(vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 23u)], global1.b))))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -18947i, u_input.a) >> (~select(vec3<u32>(0u, global1.a.x, 1u), u_input.b.xwz, true) % vec3<u32>(32u)), reverseBits(vec3<i32>(u_input.a, ~(-1i), 0i))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(1690i, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a))) & reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -9937i, u_input.a, 1i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), -(~vec4<i32>(-26236i, -10649i, u_input.a, -1i)) >> (firstTrailingBit(~vec4<u32>(var_0.b.a.x, 30645u, 38510u, 81322u)) % vec4<u32>(32u))), 0i);
}

