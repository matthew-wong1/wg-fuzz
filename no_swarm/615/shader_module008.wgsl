struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -185f;

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(44814u, 1u, 50451u), vec3<u32>(39722u, 4294967295u, 42702u), vec3<u32>(9642u, 2852u, 22246u), vec3<u32>(1806u, 48476u, 4294967295u), vec3<u32>(5090u, 49240u, 0u), vec3<u32>(1u, 68272u, 4294967295u), vec3<u32>(0u, 66967u, 15681u), vec3<u32>(0u, 16726u, 89029u), vec3<u32>(1427u, 4294967295u, 20552u), vec3<u32>(83450u, 16279u, 1u), vec3<u32>(46618u, 28395u, 4294967295u), vec3<u32>(61105u, 1u, 67427u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4356u, 4294967295u, 102992u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(64898u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 1u, 45192u), vec3<u32>(1u, 53805u, 4974u), vec3<u32>(57513u, 4294967295u, 66932u), vec3<u32>(3520u, 1u, 1u), vec3<u32>(29117u, 0u, 73197u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 0u, 9016u), vec3<u32>(38244u, 1u, 27486u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = vec3<bool>(!(!(!all(vec3<bool>(false, true, true)))), true, false);
    var_0 = vec3<bool>(any(vec4<bool>(_wgslsmith_f_op_f32(round(-263f)) != arg_0.a, false, any(!vec4<bool>(var_0.x, true, true, true)), true)), var_0.x, true);
    let var_1 = ~countOneBits(arg_0.d);
    global1 = array<vec3<u32>, 26>();
    let var_2 = ~(~(~select(-2147483647i, -2147483647i, true)) & ~arg_3.x);
    return Struct_3(_wgslsmith_f_op_f32(1516f * arg_0.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.e - _wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(arg_0.e.x, -2693f, -605f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1435f, arg_0.b.x, arg_0.a) * vec3<f32>(1340f, arg_0.a, -1555f))) + arg_0.b)), vec2<i32>(_wgslsmith_dot_vec3_i32(~u_input.a, -(vec3<i32>(arg_2.x, var_2, arg_3.x) << (var_1.xwz % vec3<u32>(32u)))), ~(~_wgslsmith_add_i32(51958i, -1i))), _wgslsmith_mod_vec4_u32(~(~(~arg_0.d)), ~vec4<u32>(0u, 1u, 1u, reverseBits(4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.e.x))))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    let var_0 = func_2(Struct_3(_wgslsmith_f_op_f32(arg_2.b.x + -957f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-232f, 340f, -1061f), vec3<f32>(-1855f, _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-arg_2.b.x)))), u_input.a.yy, vec4<u32>(abs(4294967295u), u_input.b, 4294967295u, 1u) >> (vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(arg_2.d, vec4<u32>(0u, arg_2.d.x, arg_0.x, 4294967295u)), _wgslsmith_dot_vec4_u32(arg_2.d, arg_2.d), 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.e.x, _wgslsmith_f_op_f32(arg_2.a + arg_1.b.x), -1397f)))), 0u, -(~vec2<i32>(firstTrailingBit(arg_1.a.x), _wgslsmith_add_i32(-102197i, arg_1.a.x))), arg_1.a.yy);
    return func_2(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_vec3_f32(arg_1.b.yyw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1107f, arg_1.b.x, -1698f) * arg_2.e))), max(arg_1.a.wy, arg_1.a.zy), vec4<u32>(~63569u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.d.x, 28083u, arg_2.d.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, var_0.d.x, 1u), vec4<bool>(false, true, true, true)), min(var_0.d, arg_2.d)), arg_2.d.x, firstTrailingBit(22559u << (arg_0.x % 32u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 175f, -726f)))))), 1u, -var_0.c, max(_wgslsmith_mod_vec2_i32(-vec2<i32>(20307i, 19108i), max(-vec2<i32>(-2147483647i, arg_2.c.x), ~u_input.a.xz)), firstTrailingBit(arg_2.c)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(arg_1.e.zy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a))), _wgslsmith_f_op_f32(-func_3(~vec2<u32>(u_input.b, 75499u), Struct_1(vec4<i32>(-7380i, u_input.a.x, 2147483647i, 0i), vec4<f32>(-931f, arg_1.e.x, arg_1.e.x, -1125f)), func_2(arg_1, 7865u, arg_1.c, vec2<i32>(u_input.a.x, u_input.a.x))).a))));
    let var_1 = -firstTrailingBit(-18629i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f - arg_1.e.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(var_0.x * var_0.x)), arg_1.b.x)) * 655f);
    var_0 = vec2<f32>(arg_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, arg_1.b.x))) - _wgslsmith_f_op_f32(1550f * var_0.x)));
    var var_2 = arg_1.e.yy;
    return select(vec4<i32>(func_3(vec2<u32>(0u, 14240u), Struct_1(arg_0, vec4<f32>(var_2.x, var_0.x, 774f, var_0.x)), func_3(arg_2.xx << (arg_1.d.ww % vec2<u32>(32u)), Struct_1(arg_0, vec4<f32>(var_2.x, -262f, -1372f, -1058f)), arg_1)).c.x, ~(-4079i), ~(~u_input.a.x), 2147483647i), vec4<i32>(arg_0.x, _wgslsmith_sub_i32(arg_0.x, -2147483647i), 1i, abs(-2147483647i)), any(select(vec3<bool>(all(vec2<bool>(false, true)), arg_1.d.x >= arg_1.d.x, true), vec3<bool>(true, false, true), vec3<bool>(true, true, any(vec2<bool>(true, true))))));
}

fn func_1() -> bool {
    global0 = 710f;
    global0 = -708f;
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(func_4(min(vec4<i32>(u_input.a.x, 1i, -5109i, 1i), select(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 12605i, -39850i), vec4<bool>(false, false, false, false))), func_3(abs(vec2<u32>(u_input.b, 15234u)), Struct_1(vec4<i32>(u_input.a.x, -43186i, u_input.a.x, 65774i), vec4<f32>(-1079f, 1372f, -988f, 1000f)), func_2(Struct_3(973f, vec3<f32>(-254f, -2062f, -1095f), u_input.a.zy, vec4<u32>(1u, u_input.b, 48731u, u_input.b), vec3<f32>(439f, -1000f, -541f)), 1u, u_input.a.xy, vec2<i32>(29731i, u_input.a.x))), ~firstTrailingBit(vec3<u32>(3298u, u_input.b, u_input.b))), select(min(func_4(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), Struct_3(-242f, vec3<f32>(465f, -103f, -157f), u_input.a.zx, vec4<u32>(2474u, 16282u, 57394u, 21538u), vec3<f32>(677f, 989f, -1416f)), vec3<u32>(u_input.b, 54965u, u_input.b)), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(~(-72562i), u_input.a.x, 1i, reverseBits(1i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(749f, 531f))), -1209f, 1691f, _wgslsmith_f_op_f32(-func_2(Struct_3(1638f, vec3<f32>(793f, 542f, -546f), vec2<i32>(-1i, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<f32>(-594f, 686f, 498f)), 92409u, vec2<i32>(0i, 0i), u_input.a.yy).b.x)))));
    var var_1 = u_input.b;
    var var_2 = var_0.b.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 26>();
    global1 = array<vec3<u32>, 26>();
    let var_0 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(true, true)), vec2<bool>(func_1(), true));
    var var_1 = select(!select(select(!vec3<bool>(false, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, false)), u_input.a.x <= u_input.a.x), vec3<bool>(any(vec3<bool>(false, var_0.x, var_0.x)), 0i <= u_input.a.x, var_0.x), var_0.x), select(!(!(!vec3<bool>(var_0.x, true, var_0.x))), select(vec3<bool>(false, true, all(vec3<bool>(false, false, var_0.x))), !vec3<bool>(var_0.x, var_0.x, var_0.x), false), var_0.x), any(vec3<bool>(true, !any(vec4<bool>(true, var_0.x, var_0.x, true)), false)));
    var_1 = vec3<bool>(false, any(!vec4<bool>(var_0.x, all(vec3<bool>(var_1.x, true, false)), true, true)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, ~1u, ~4294967295u, u_input.b), select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, 0u, 6804u, 4294967295u)), abs(vec4<u32>(u_input.b, u_input.b, 1u, 1u)), vec4<bool>(true, true, true, true))), ~func_2(Struct_3(270f, vec3<f32>(-313f, 442f, -1168f), u_input.a.yy, vec4<u32>(57294u, u_input.b, u_input.b, 4294967295u), vec3<f32>(-2134f, -1709f, 631f)), 22047u, vec2<i32>(u_input.a.x, -49061i), u_input.a.yy).d | _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, 0u, u_input.b), min(vec4<u32>(4294967295u, 1u, u_input.b, 47248u), vec4<u32>(0u, u_input.b, u_input.b, 40272u)))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 11070u), _wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 26u)], ~vec3<u32>(u_input.b, u_input.b, u_input.b)), global1[_wgslsmith_index_u32(4294967295u, 26u)]));
}

