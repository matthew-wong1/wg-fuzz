struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, false, false, false, false, false, true);

var<private> global1: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(Struct_1(-322f, vec2<u32>(0u, 8666u)), 0i, true, 0i), Struct_5(Struct_1(137f, vec2<u32>(0u, 26374u)), 7561i, true, 34916i), Struct_5(Struct_1(-964f, vec2<u32>(22737u, 0u)), 14717i, false, 0i), Struct_5(Struct_1(-3218f, vec2<u32>(19441u, 35944u)), 0i, false, 21356i), Struct_5(Struct_1(-446f, vec2<u32>(4294967295u, 4294967295u)), 26144i, true, i32(-2147483648)), Struct_5(Struct_1(1651f, vec2<u32>(4294967295u, 22755u)), -29573i, true, 1i), Struct_5(Struct_1(-823f, vec2<u32>(0u, 0u)), 2147483647i, true, 25877i), Struct_5(Struct_1(2061f, vec2<u32>(56794u, 0u)), 0i, true, -20983i), Struct_5(Struct_1(-1802f, vec2<u32>(32806u, 49364u)), 2147483647i, true, 1i), Struct_5(Struct_1(-508f, vec2<u32>(13218u, 6971u)), 0i, true, -61335i), Struct_5(Struct_1(1755f, vec2<u32>(41943u, 0u)), 5195i, true, 84667i), Struct_5(Struct_1(103f, vec2<u32>(24987u, 32288u)), -40371i, true, i32(-2147483648)), Struct_5(Struct_1(400f, vec2<u32>(29694u, 4294967295u)), 1115i, false, 2147483647i), Struct_5(Struct_1(-554f, vec2<u32>(1u, 4294967295u)), i32(-2147483648), false, 0i), Struct_5(Struct_1(156f, vec2<u32>(4294967295u, 1u)), 0i, true, -25803i), Struct_5(Struct_1(-712f, vec2<u32>(4294967295u, 1u)), 2147483647i, true, -36129i), Struct_5(Struct_1(-441f, vec2<u32>(1u, 23943u)), 1i, true, 2147483647i), Struct_5(Struct_1(1236f, vec2<u32>(1u, 1u)), 12258i, true, 8607i), Struct_5(Struct_1(1000f, vec2<u32>(34278u, 53484u)), 39880i, false, 55151i), Struct_5(Struct_1(2107f, vec2<u32>(0u, 1u)), -1i, false, 8733i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global0 = array<bool, 7>();
    var var_0 = -1000f;
    var var_1 = select(vec4<bool>(!all(vec2<bool>(false, true)), !(!(!global0[_wgslsmith_index_u32(u_input.b.x, 7u)])), !any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, true)), all(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, false), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(79362u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), select(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, global0[_wgslsmith_index_u32(122061u, 7u)])))), !(!vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 7u)], !global0[_wgslsmith_index_u32(51679u, 7u)], !global0[_wgslsmith_index_u32(0u, 7u)])), all(vec4<bool>(true, true, true, true)));
    let var_2 = -reverseBits(-vec3<i32>(-20482i, -2147483647i, u_input.a)) >> (vec3<u32>(u_input.b.x, u_input.b.x, 4597u) % vec3<u32>(32u));
    let var_3 = Struct_3(Struct_2(Struct_1(-2184f, firstTrailingBit(u_input.b.xz)), vec4<i32>(-26072i, _wgslsmith_mod_i32(2147483647i, u_input.a ^ u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a), -19016i ^ var_2.x), u_input.b, -634f), !all(select(select(vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x)), !var_1.yzw, select(vec3<bool>(var_1.x, var_1.x, false), var_1.zww, var_1.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -920f) + -292f), ~max(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(24954u, u_input.b.x))), vec4<i32>(var_2.x, _wgslsmith_clamp_i32(63307i, 33386i, var_2.x), i32(-1i) * -2147483647i, ~82995i) << (u_input.b % vec4<u32>(32u)), u_input.b | vec4<u32>(1u, ~4294967295u, 13642u >> (u_input.b.x % 32u), u_input.b.x), 743f));
    return min(_wgslsmith_dot_vec3_i32(var_2, vec3<i32>(u_input.a, 1i, _wgslsmith_div_i32(reverseBits(var_3.c.b.x), u_input.a))), ~1i);
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global0 = array<bool, 7>();
    global1 = array<Struct_5, 20>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(~2147483647i, ~0i), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(28115i, -921i, u_input.a, -1i) | ~vec4<i32>(u_input.a, 1i, 53597i, u_input.a))) | 0i;
    var var_1 = vec2<i32>(func_3(), var_0);
    var var_2 = Struct_4(Struct_3(Struct_2(Struct_1(-1094f, vec2<u32>(73489u, 0u)), min(vec4<i32>(var_1.x, 1i, var_0, 0i), vec4<i32>(var_0, u_input.a, var_0, 2147483647i) >> (u_input.b % vec4<u32>(32u))), u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f))))), !any(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(arg_0.x, 7u)])), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(-899f, 202f, true)), u_input.b.xz ^ vec2<u32>(0u, u_input.b.x)), vec4<i32>(2147483647i, var_1.x, var_0, -26005i) << (~vec4<u32>(1u, u_input.b.x, 13664u, 1u) % vec4<u32>(32u)), firstTrailingBit(u_input.b), _wgslsmith_div_f32(723f, -1000f))), 350f, ~u_input.a);
    return var_2.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = -arg_0.c.b.wx;
    let var_1 = abs(func_2(u_input.b.yy).a.b.yxx);
    let var_2 = func_2(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.c.c.x, 45070u), func_2(u_input.b.zx).a.c.ww)).c.a;
    let var_3 = ~(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.b.xz, var_1.zy), var_1.x >> (u_input.b.x % 32u), var_0.x >> (16444u % 32u), var_1.x) ^ (-vec4<i32>(12257i, 2669i, -1i, arg_0.a.b.x) | arg_0.c.b)) >> (_wgslsmith_div_vec4_u32(arg_0.a.c, firstLeadingBit(~arg_0.a.c & _wgslsmith_add_vec4_u32(arg_0.c.c, arg_0.c.c))) % vec4<u32>(32u));
    var var_4 = Struct_3(Struct_2(func_2(max(vec2<u32>(9318u, u_input.b.x), ~arg_0.a.a.b)).a.a, firstTrailingBit(vec4<i32>(u_input.a, max(var_0.x, arg_0.c.b.x), 6773i, var_3.x)), ~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_f32(-func_2(vec2<u32>(u_input.b.x, var_2.b.x)).a.d)), select(false, ~min(90210u, arg_0.c.a.b.x) > _wgslsmith_dot_vec4_u32(~vec4<u32>(25859u, 57286u, 78609u, 4294967295u), u_input.b >> (u_input.b % vec4<u32>(32u))), arg_1.x), arg_0.a);
    return func_2(var_2.b).c;
}

fn func_1(arg_0: i32) -> Struct_4 {
    global1 = array<Struct_5, 20>();
    var var_0 = Struct_4(Struct_3(func_4(func_2(select(u_input.b.zz, vec2<u32>(u_input.b.x, u_input.b.x), true)), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 7u)], false), global0[_wgslsmith_index_u32(u_input.b.x, 7u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(~u_input.b.x, 7u)], true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 54199u), 7u)])), func_2(vec2<u32>(u_input.b.x, u_input.b.x) & ~vec2<u32>(u_input.b.x, u_input.b.x)).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(450f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-255f, 515f))))), func_3());
    global0 = array<bool, 7>();
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(126f * var_0.b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14865i, -658i, 0i, arg_0) << (var_0.a.c.c % vec4<u32>(32u)), vec4<i32>(2147483647i, arg_0, var_0.a.c.b.x, -2147483647i)), -16982i), _wgslsmith_add_i32(~1i, -15587i)));
    var var_1 = func_2(var_0.a.c.a.b);
    return Struct_4(func_2(var_1.a.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f - _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.a.a.a.a * -110f)))), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a);
    var var_1 = ~(~vec4<u32>(_wgslsmith_add_u32(~var_0.a.c.c.x, ~u_input.b.x), _wgslsmith_add_u32(~4294967295u, ~6781u), 40058u, abs(4294967295u)));
    var var_2 = vec3<f32>(var_0.b, -486f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-936f)) * -276f), 154f)));
    global1 = array<Struct_5, 20>();
    global1 = array<Struct_5, 20>();
    let var_3 = Struct_1(-927f, firstLeadingBit(~_wgslsmith_mod_vec2_u32(~u_input.b.zy, u_input.b.yz | vec2<u32>(u_input.b.x, var_1.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b, var_0.a.c.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.a + var_0.b)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)) - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -962f)))), _wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(f32(-1f) * -287f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(921f, var_2.x, 177f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1488f, var_3.a, var_0.b), vec3<f32>(-3344f, 1027f, 246f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(117f, 1000f, var_3.a))))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1438f, var_0.b) + vec3<f32>(var_0.a.a.a.a, -152f, -384f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -628f, 1069f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1720f, var_0.a.a.d, var_2.x))))))), any(!select(!vec2<bool>(global0[_wgslsmith_index_u32(33815u, 7u)], var_0.a.b), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), !var_0.a.b))));
    var var_4 = _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1752f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_2.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -42967i), vec2<i32>(u_input.a, ~16098i), vec2<i32>(u_input.a, abs(1i))));
}

