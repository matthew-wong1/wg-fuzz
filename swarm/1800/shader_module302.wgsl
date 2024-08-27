struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<i32, 27> = array<i32, 27>(80647i, 68425i, -6131i, 0i, 27916i, i32(-2147483648), 0i, 1i, 1i, i32(-2147483648), -22534i, -17922i, 49905i, 2147483647i, 1i, 0i, 1i, -25357i, -14063i, -32444i, 45646i, i32(-2147483648), -14546i, i32(-2147483648), 2147483647i, 1i, 21632i);

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1451f, -760f), vec2<f32>(-666f, 1000f), vec2<f32>(-184f, 2079f), vec2<f32>(-634f, 509f), vec2<f32>(-905f, -157f), vec2<f32>(1544f, 1769f), vec2<f32>(-1535f, -1000f), vec2<f32>(-2090f, -1411f));

var<private> global3: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(38407i, 0i));

var<private> global4: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    let var_0 = arg_0.zy;
    let var_1 = var_0.x;
    global0 = array<Struct_2, 8>();
    var var_2 = ~(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 1u, 9174u, arg_0.x), vec4<u32>(u_input.d.x, arg_0.x, u_input.c, 4294967295u), select(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), vec4<u32>(1u, 24879u, u_input.d.x, 18741u), false))));
    var var_3 = Struct_1(select(vec3<bool>(arg_1.x, !all(arg_1), any(arg_1)), select(select(select(vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), vec3<bool>(true, true, true), false), select(vec3<bool>(arg_1.x, true, true), !(!vec3<bool>(arg_1.x, false, arg_1.x)), !select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, arg_1.x, arg_1.x)))), !vec3<bool>(true, all(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x));
    return -51167i << (reverseBits(~(var_1 & countOneBits(0u))) % 32u);
}

fn func_2() -> bool {
    global3 = array<vec2<i32>, 1>();
    var var_0 = true;
    var var_1 = (all(vec3<bool>(true, true, true)) | (1i < -func_3(vec3<u32>(u_input.d.x, 26415u, 3932u), vec2<bool>(false, true), -73863i, u_input.b))) | (true | all(vec3<bool>(true, true, true)));
    global0 = array<Struct_2, 8>();
    var var_2 = Struct_1(vec3<bool>(select(true, false, true), true, false), vec3<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))) || true, !(_wgslsmith_add_u32(0u, u_input.d.x) > ~u_input.d.x)));
    return var_2.b.x;
}

fn func_1() -> bool {
    let var_0 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(-16663i), u_input.a, -2147483647i), ~u_input.b >> (~vec3<u32>(u_input.d.x, 1u, u_input.d.x) % vec3<u32>(32u)))) >> ((reverseBits(~min(vec3<u32>(u_input.c, 24598u, 0u), vec3<u32>(u_input.c, 4294967295u, u_input.c))) & ~reverseBits(~vec3<u32>(14494u, u_input.c, 0u))) % vec3<u32>(32u));
    global1 = array<i32, 27>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 8u)];
    global2 = array<vec2<f32>, 8>();
    let var_2 = select(vec3<u32>(45720u, u_input.c, ~4294967295u >> (u_input.d.x % 32u)), ~firstTrailingBit(vec3<u32>(17577u, 4294967295u, 8226u)), var_1.a.a.x) >> (select(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c) ^ vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d.x, 7379u), vec3<u32>(4294967295u, u_input.c, u_input.c))), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41823u, 4294967295u, u_input.c), vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), vec3<u32>(4294967295u, 15476u, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 53913i), var_0) < 28650i), ~(~(vec3<u32>(u_input.d.x, u_input.d.x, 1235u) >> (vec3<u32>(0u, 4294967295u, u_input.d.x) % vec3<u32>(32u)))), vec3<bool>(all(select(var_1.b.b, var_1.b.a, var_1.a.a.x)), !any(vec3<bool>(true, var_1.a.b.x, var_1.a.b.x)), true)) % vec3<u32>(32u));
    return all(select(!(!(!vec4<bool>(var_1.c.b.x, true, true, var_1.b.b.x))), !select(select(vec4<bool>(false, true, var_1.b.b.x, true), vec4<bool>(true, true, var_1.c.b.x, var_1.a.a.x), var_1.c.a.x), !vec4<bool>(var_1.b.b.x, false, true, true), false), !vec4<bool>(true, func_2(), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1603f)), _wgslsmith_f_op_f32(-131f - -1445f), _wgslsmith_f_op_f32(537f * -1016f), -712f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2016f, -1000f, 185f, -1000f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1417f, 838f, 666f, 710f), vec4<f32>(1244f, 577f, -1148f, -1253f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1653f, 794f, -1000f, -502f) + vec4<f32>(-904f, 175f, -1000f, 1254f)), func_1())))), any(vec3<bool>(true, true, true)) & true)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2234f, 1373f, -859f, -1000f) * vec4<f32>(-803f, -1346f, -981f, 482f))))));
    var var_2 = vec3<u32>(18345u, 2824u, 26628u | firstTrailingBit(70931u));
    var var_3 = abs(~vec2<u32>(firstTrailingBit(4294967295u), 4294967295u));
    let var_4 = Struct_1(vec3<bool>(all(vec4<bool>(true, true, true, true)), !func_1(), u_input.b.x == abs(1i)), vec3<bool>(true || any(vec3<bool>(false, true, false)), false, !((-1i ^ u_input.e.x) == -u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -2647f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1638f))) - -174f));
}

