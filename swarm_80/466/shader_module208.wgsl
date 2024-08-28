struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, Struct_2(vec4<f32>(1479f, -1000f, 452f, 1667f), Struct_1(vec4<i32>(-25i, -1i, i32(-2147483648), -1i), 1629f, 4294967295u, vec3<bool>(false, true, false))), Struct_2(vec4<f32>(1024f, 425f, 548f, -878f), Struct_1(vec4<i32>(1i, 18663i, -39585i, 1i), 893f, 37215u, vec3<bool>(true, false, true))), vec3<u32>(85124u, 0u, 51996u), vec4<u32>(1u, 27922u, 4294967295u, 14762u));

var<private> global1: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(205f, -767f, -860f), vec3<f32>(-2349f, 191f, 1333f), vec3<f32>(-489f, -341f, -450f), vec3<f32>(-1875f, -598f, 418f));

var<private> global2: vec3<u32> = vec3<u32>(1u, 9733u, 1u);

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<i32>(5783i, -1i, -57466i, -40094i), -886f, 5795u, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-26520i, 2147483647i, -1i, 11609i), 1431f, 1u, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1i, 5480i, -44566i, 10124i), 494f, 51994u, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(3558i, i32(-2147483648), 0i, 24501i), -309f, 112467u, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(33238i, -1i, -58173i, -44744i), -833f, 1u, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(1i, 0i, -5522i, i32(-2147483648)), 220f, 21952u, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-1i, 1i, 34538i, 1i), 1262f, 103737u, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-55896i, 0i, -18969i, 4076i), 1000f, 4294967295u, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-1i, 48953i, -1i, -9466i), -772f, 4294967295u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-1i, 0i, -1i, 1i), -1918f, 4294967295u, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-1i, -1i, -1i, i32(-2147483648)), 797f, 1u, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-1i, -1i, 3789i, i32(-2147483648)), 471f, 14702u, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(11166i, 59249i, 51952i, 2147483647i), 1499f, 80049u, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(18221i, -1013i, i32(-2147483648), 0i), -704f, 0u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-2013i, -41487i, 1i, 1i), -409f, 50555u, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(23775i, -49852i, -1i, -8712i), 427f, 9571u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(i32(-2147483648), 84873i, 1i, 0i), -2156f, 1u, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-11746i, -31485i, -1i, i32(-2147483648)), 244f, 4090u, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-19536i, i32(-2147483648), 0i, 2147483647i), -773f, 16799u, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1i, 0i, -22026i, 81168i), -1873f, 16201u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-8184i, 1i, 19121i, 1i), -787f, 0u, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(2147483647i, -20260i, -6193i, -53948i), 1479f, 1u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-3040i, 1i, -28245i, -1162i), 1340f, 31679u, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(25349i, 2147483647i, 1i, -69440i), 639f, 0u, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-91302i, 2147483647i, -15034i, 2147483647i), -856f, 22454u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(321i, 7413i, 2147483647i, 22869i), -199f, 56262u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(0i, -1i, 23335i, i32(-2147483648)), -630f, 1u, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(0i, 2147483647i, 72042i, -5707i), 479f, 53757u, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(51265i, -10810i, i32(-2147483648), 0i), -337f, 1u, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(61612i, 2147483647i, -1i, 0i), 1916f, 1u, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(48144i, i32(-2147483648), 70051i, 1i), 554f, 31807u, vec3<bool>(true, false, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = all(select(select(!select(vec4<bool>(false, global0.c.b.d.x, global0.c.b.d.x, false), vec4<bool>(true, global0.b.b.d.x, global0.b.b.d.x, false), vec4<bool>(global0.a, global0.a, global0.c.b.d.x, global0.c.b.d.x)), select(vec4<bool>(global0.a, true, false, true), select(vec4<bool>(global0.a, true, global0.c.b.d.x, global0.b.b.d.x), vec4<bool>(true, true, false, false), vec4<bool>(global0.c.b.d.x, false, false, global0.c.b.d.x)), true), vec4<bool>(any(global0.c.b.d.yx), u_input.a > u_input.a, true, true)), select(select(select(vec4<bool>(global0.a, global0.b.b.d.x, global0.c.b.d.x, global0.a), vec4<bool>(global0.b.b.d.x, global0.b.b.d.x, global0.b.b.d.x, global0.a), true), !vec4<bool>(global0.a, true, global0.c.b.d.x, false), vec4<bool>(global0.c.b.d.x, false, global0.a, global0.c.b.d.x)), select(select(vec4<bool>(global0.b.b.d.x, false, false, true), vec4<bool>(global0.a, true, true, false), vec4<bool>(false, false, false, global0.b.b.d.x)), !vec4<bool>(global0.a, global0.c.b.d.x, true, true), vec4<bool>(false, global0.a, false, false)), !global0.c.b.d.x), global0.c.b.d.x));
    return global0.b.b.a.xyx;
}

fn func_2() -> vec4<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_sub_vec3_i32(-global0.b.b.a.yzy, -_wgslsmith_sub_vec3_i32(select(global0.b.b.a.yxy, global0.b.b.a.yzw, true), func_3()));
    var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-global0.b.b.a.x, -33167i, func_3().x), ~firstTrailingBit(-(~global0.c.b.a.zzy)));
    var_1 = ~vec3<i32>(~1i, var_1.x, _wgslsmith_mod_i32(~(~1i), -_wgslsmith_add_i32(global0.b.b.a.x, -29880i)));
    let var_2 = global0.b.b.d.zy;
    return !vec4<bool>(var_0, true, (global2.x > _wgslsmith_dot_vec3_u32(global0.d, vec3<u32>(u_input.a, 27608u, 1u))) & true, any(!select(vec3<bool>(false, false, false), vec3<bool>(var_0, var_2.x, true), var_2.x)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = global0.b.b.a.wy;
    var var_1 = vec4<i32>(global0.b.b.a.x, -abs(~firstTrailingBit(-53318i)), _wgslsmith_dot_vec3_i32(global0.b.b.a.zxw, global0.c.b.a.yzy), -1i);
    var var_2 = !select(vec4<bool>(true, arg_0.x, true, any(global0.c.b.d)), vec4<bool>(select(global0.a, any(global0.b.b.d), all(global0.b.b.d.xz)), all(select(vec4<bool>(arg_0.x, arg_0.x, global0.a, false), vec4<bool>(true, true, global0.c.b.d.x, global0.b.b.d.x), vec4<bool>(global0.c.b.d.x, arg_0.x, true, true))), true, arg_0.x | select(false, arg_0.x, global0.a)), !func_2());
    let var_3 = var_1.x;
    global2 = ~firstTrailingBit(vec3<u32>(~8083u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(5416u, global0.d.x), _wgslsmith_div_u32(18622u, 40459u)), 4294967295u));
    return Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.c.a.x)))), var_1.x);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    let var_0 = global0.c.b.d;
    let var_1 = Struct_4(-549f, firstLeadingBit(~(-_wgslsmith_sub_i32(arg_0.b, -2147483647i))));
    var var_2 = global0.e.zz;
    let var_3 = _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(25682u, global0.c.b.c), firstLeadingBit(1u), 3971u), vec3<u32>(u_input.a, var_2.x ^ 46341u, u_input.a))), vec3<u32>(~u_input.a, 9076u, _wgslsmith_dot_vec4_u32(~global0.e, ~_wgslsmith_mod_vec4_u32(vec4<u32>(68482u, global2.x, 2925u, 4294967295u), vec4<u32>(arg_3.c.b.c, u_input.a, 4294967295u, var_2.x)))));
    global3 = array<Struct_1, 31>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_vec3_u32(global0.d, vec3<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(countOneBits(global0.d.x), 4294967295u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global0.c.b.c, 24497u, global2.x), vec4<u32>(15780u, 15253u, 103797u, global0.e.x))), 52206u));
    global3 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_mult_vec2_u32(global0.e.zw, _wgslsmith_sub_vec2_u32(vec2<u32>(100317u, _wgslsmith_sub_u32(u_input.a, 42625u)), global2.zx)) | vec2<u32>(global2.x, func_4(func_1(!vec2<bool>(global0.a, global0.c.b.d.x)), _wgslsmith_dot_vec2_i32(global0.c.b.a.zy, global0.b.b.a.yy) << (26263u % 32u), Struct_4(_wgslsmith_f_op_f32(-global0.c.a.x), -global0.b.b.a.x), Struct_3(any(global0.c.b.d.xx), Struct_2(global0.b.a, global3[_wgslsmith_index_u32(global2.x, 31u)]), global0.c, global0.d, ~vec4<u32>(global2.x, 0u, 31867u, 33304u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-firstLeadingBit(~global0.b.b.a.x)), abs(global0.b.b.a.x));
}

