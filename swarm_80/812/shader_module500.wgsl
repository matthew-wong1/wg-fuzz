struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(15708i, 28282i), vec2<i32>(33101i, -35984i), vec2<i32>(26717i, -1632i), vec2<i32>(7582i, -5143i), vec2<i32>(-1i, 9622i), vec2<i32>(-84088i, -1i), vec2<i32>(i32(-2147483648), -41206i), vec2<i32>(-31411i, 1i), vec2<i32>(32359i, 1i), vec2<i32>(-55003i, -20668i), vec2<i32>(-2155i, 45064i));

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(33088i, 7714i)), 0u, 1325f), vec4<u32>(588u, 9613u, 91689u, 37779u), vec2<f32>(374f, -796f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(54114i, 0i)), 6693u, 377f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 18492i)), 34296u, 326f), vec4<u32>(1u, 1u, 0u, 0u), vec2<f32>(-131f, -1483f), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(2147483647i, -3191i)), 1u, -1000f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(2668i, -21095i)), 121767u, -772f), vec4<u32>(4294967295u, 0u, 62290u, 1u), vec2<f32>(-1612f, -660f), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(-45806i, -27032i)), 1u, -833f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(2147483647i, -1i)), 4294967295u, 574f), vec4<u32>(33288u, 4294967295u, 98443u, 4294967295u), vec2<f32>(314f, -110f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-1i, 16645i)), 4294967295u, -1000f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), 1i)), 56677u, 1123f), vec4<u32>(1u, 1u, 47006u, 16477u), vec2<f32>(-374f, -2439f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(47478i, 0i)), 78802u, 1558f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(58912i, 0i)), 13235u, -381f), vec4<u32>(1u, 4294967295u, 1u, 7745u), vec2<f32>(-926f, 2662f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-19219i, 1i)), 0u, -471f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(22022i, 22393i)), 1u, -574f), vec4<u32>(1u, 4294967295u, 0u, 0u), vec2<f32>(1386f, 1031f), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(2147483647i, -36124i)), 7690u, 521f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(7676i, -42244i)), 4294967295u, 857f), vec4<u32>(18455u, 60535u, 1u, 0u), vec2<f32>(-622f, -605f), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-18948i, 0i)), 11029u, -761f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-34958i, -1i)), 1u, -717f), vec4<u32>(0u, 2974u, 4294967295u, 1u), vec2<f32>(-1000f, -584f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(0i, 1i)), 4294967295u, -1764f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-1i, -1i)), 0u, -346f), vec4<u32>(0u, 0u, 23419u, 39212u), vec2<f32>(1015f, -946f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, -1i)), 7148u, 684f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(0i, 0i)), 4294967295u, -453f), vec4<u32>(2160u, 1u, 1672u, 19556u), vec2<f32>(549f, -1000f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(68922i, 2147483647i)), 769u, 628f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(2147483647i, 1i)), 26252u, 1416f), vec4<u32>(94044u, 48908u, 1u, 1u), vec2<f32>(1673f, -1047f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(13138i, 41980i)), 20805u, -209f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(2147483647i, 0i)), 4294967295u, -496f), vec4<u32>(1u, 4294967295u, 0u, 23882u), vec2<f32>(-967f, -680f), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(2147483647i, -44108i)), 9481u, 1329f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-7097i, 10091i)), 29826u, 375f), vec4<u32>(30256u, 1u, 67514u, 68601u), vec2<f32>(-784f, 111f), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), i32(-2147483648))), 12897u, -232f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(-32891i, i32(-2147483648))), 37601u, -242f), vec4<u32>(1u, 60178u, 0u, 0u), vec2<f32>(-513f, 139f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(37487i, -76127i)), 36531u, 1008f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(-21236i, 1i)), 0u, 287f), vec4<u32>(805u, 2530u, 29679u, 18067u), vec2<f32>(1000f, 508f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(1i, 23412i)), 4294967295u, 932f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(10372i, 1i)), 4294967295u, -1701f), vec4<u32>(0u, 32186u, 4294967295u, 1u), vec2<f32>(-849f, -214f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(-18754i, 1i)), 4294967295u, -515f)));

var<private> global2: Struct_3;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, -1i)), 1u, 980f), vec4<u32>(4294967295u, 4294967295u, 11160u, 97240u), vec2<f32>(370f, -897f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(24688i, 54229i)), 42390u, -1041f));

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global3 = global1[_wgslsmith_index_u32(global2.d.b, 17u)];
    let var_0 = vec2<bool>(!all(!global2.a.a.a.yx) || any(select(select(vec4<bool>(global2.d.a.a.x, global2.d.a.a.x, global3.d.a.a.x, true), vec4<bool>(global2.a.a.a.x, true, arg_0.x, arg_0.x), false), select(vec4<bool>(false, global2.d.a.a.x, global3.d.a.a.x, arg_0.x), vec4<bool>(true, false, true, arg_0.x), false), arg_0.x)), (reverseBits(-global2.a.a.b.x) > -max(8501i, global2.d.a.b.x)) || !any(!vec2<bool>(true, global3.d.a.a.x)));
    var var_1 = any(!(!select(global2.d.a.a, vec3<bool>(true, false, var_0.x), select(global2.d.a.a, global3.a.a.a, false))));
    var var_2 = global2.a.a.a;
    let var_3 = select(!select(vec4<bool>(var_2.x && arg_0.x, all(vec4<bool>(false, arg_0.x, global3.a.a.a.x, var_0.x)), global2.d.a.a.x, var_2.x || var_0.x), select(vec4<bool>(true, true, false, var_2.x), select(vec4<bool>(global3.a.a.a.x, var_2.x, global2.a.a.a.x, var_0.x), vec4<bool>(false, arg_0.x, var_2.x, global2.a.a.a.x), true), select(vec4<bool>(global3.a.a.a.x, true, false, arg_0.x), vec4<bool>(arg_0.x, global2.d.a.a.x, true, global2.d.a.a.x), true)), all(!vec4<bool>(false, false, var_0.x, global3.a.a.a.x))), select(!select(!vec4<bool>(false, var_2.x, true, global2.d.a.a.x), !vec4<bool>(global2.a.a.a.x, true, global3.a.a.a.x, var_0.x), -1373f <= global2.c.x), !(!select(vec4<bool>(var_0.x, global2.a.a.a.x, false, true), vec4<bool>(arg_0.x, false, arg_0.x, var_2.x), vec4<bool>(false, global3.d.a.a.x, true, false))), vec4<bool>(global2.d.a.a.x, all(!vec4<bool>(true, true, global2.d.a.a.x, true)), all(global3.d.a.a), true)), !select(select(vec4<bool>(true, var_0.x, var_2.x, var_2.x), !vec4<bool>(global3.a.a.a.x, false, global2.d.a.a.x, true), select(vec4<bool>(var_0.x, true, false, global2.d.a.a.x), vec4<bool>(false, var_2.x, var_0.x, global2.d.a.a.x), global3.a.a.a.x)), vec4<bool>(true, true, true, true), all(global2.d.a.a)));
    return !all(vec4<bool>(var_2.x, true, false, all(vec2<bool>(true, true))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = 3413i;
    var var_1 = arg_1.a;
    var_0 = 44083i;
    let var_2 = func_3(vec2<bool>(true && all(!vec3<bool>(global3.a.a.a.x, global3.a.a.a.x, false)), all(vec3<bool>(false, true, true))));
    var var_3 = vec2<i32>(~_wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(arg_0.x, arg_0.x, var_1.b.x, var_1.b.x))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.a.b.x, arg_1.a.b.x, -2147483647i, -42090i), vec4<i32>(var_1.b.x, 30239i, 2147483647i, arg_1.a.b.x)))), _wgslsmith_clamp_i32(abs((arg_0.x ^ arg_1.a.b.x) | ~0i), -2147483647i, -2147483647i));
    return var_1.a.xx;
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = select(!select(vec2<bool>(true, true), global2.a.a.a.yx, !(!vec2<bool>(global2.d.a.a.x, false))), !func_2(~abs(vec2<i32>(38734i, 18573i)), global3.d), !select(global3.d.a.a.zx, global2.d.a.a.zx, global2.d.a.a.x));
    let var_1 = min(~(-(~vec4<i32>(1i, -26833i, arg_0.b.x, -11594i)) << (~(~global3.b) % vec4<u32>(32u))), vec4<i32>(global2.a.a.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(global2.a.a.b.x, global2.d.a.b.x, arg_0.b.x), vec3<i32>(arg_0.b.x, -27605i, arg_0.b.x)), ~vec3<i32>(1i, 1i, 1i)), -7559i, _wgslsmith_mult_i32(~12573i, ~(~(-1i)))));
    var var_2 = ~(_wgslsmith_div_i32(_wgslsmith_mod_i32(14203i << (1u % 32u), _wgslsmith_div_i32(arg_0.b.x, global2.d.a.b.x)), _wgslsmith_mult_i32(global2.a.a.b.x, 14643i) | -2147483647i) ^ var_1.x);
    var var_3 = 795f;
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~global3.b.zzz), _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(firstLeadingBit(0u)), global4.x, global3.a.b), global3.b.wzx << (abs(firstLeadingBit(global2.b.www)) % vec3<u32>(32u)))), 17u)];
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(global3.b.xww & global2.b.xzw, ~(~global2.b.xzw ^ _wgslsmith_sub_vec3_u32(global3.b.zyx, firstTrailingBit(vec3<u32>(global4.x, u_input.a, global3.a.b)))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.x, ~(~var_0.x)), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(global3.c)), _wgslsmith_sub_vec4_i32(abs(min(vec4<i32>(global2.a.a.b.x, -41963i, -2141i, -2147483647i), ~vec4<i32>(370i, var_1.a.a.b.x, var_1.d.a.b.x, 1i))), abs(select(vec4<i32>(-34473i, 2147483647i, 6826i, 2147483647i), func_1(Struct_1(vec3<bool>(global2.d.a.a.x, false, false), global3.d.a.b)), global3.a.a.a.x | global3.a.a.a.x))), global3.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1580f))), firstLeadingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, u_input.a, 1u, 1u)), var_1.b)));
}

