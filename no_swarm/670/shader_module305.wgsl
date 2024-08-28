struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(1197f, 566f, 763f), vec3<f32>(745f, -1655f, 291f), vec3<f32>(-1606f, -999f, -153f), vec3<f32>(132f, -430f, 604f), vec3<f32>(396f, 1696f, -1000f), vec3<f32>(655f, -1128f, 1214f), vec3<f32>(-149f, 449f, -117f), vec3<f32>(165f, -1235f, 1385f), vec3<f32>(-1065f, 533f, -774f), vec3<f32>(-475f, 233f, -1963f), vec3<f32>(-1268f, 100f, -211f), vec3<f32>(1047f, 651f, 2800f), vec3<f32>(-1000f, -811f, -1000f), vec3<f32>(140f, 211f, 687f), vec3<f32>(719f, -1065f, -703f), vec3<f32>(936f, 669f, 669f), vec3<f32>(847f, 1055f, -946f), vec3<f32>(-375f, -2366f, 574f), vec3<f32>(-2323f, 475f, 1661f), vec3<f32>(673f, -1000f, -117f), vec3<f32>(800f, -812f, 858f), vec3<f32>(515f, -1864f, 507f), vec3<f32>(-564f, -997f, 281f), vec3<f32>(1000f, 1287f, -720f), vec3<f32>(-471f, -1336f, 881f), vec3<f32>(-363f, -896f, 677f), vec3<f32>(107f, -748f, -309f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = abs(~abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-18163i, -1i, global0.d), ~vec3<i32>(global0.d, arg_2.c.d, -19636i), ~vec3<i32>(28296i, arg_1.x, 8698i))));
    let var_1 = Struct_1(36485u, false, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(285f))), _wgslsmith_f_op_f32(arg_2.c.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1179f)), -337f, _wgslsmith_f_op_f32(step(-214f, _wgslsmith_f_op_f32(global0.c.x * arg_2.c.c.x)))))), arg_1.x);
    var var_2 = var_0;
    var var_3 = abs(~select(vec4<u32>(~48784u, 0u | global0.a, ~9925u, global0.a << (1u % 32u)), abs(~vec4<u32>(0u, var_1.a, 36000u, arg_2.c.a)), !select(vec4<bool>(true, global0.b, false, var_1.b), vec4<bool>(true, var_1.b, true, true), var_1.b)));
    var_2 = -var_0;
    return vec4<bool>(var_1.b, true, global0.b, arg_0.x);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_4 {
    global0 = Struct_1(min(~30015u, arg_3.x), max(-(~arg_2.a), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(16787i, u_input.b))) != ~(-40234i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)) * global0.c)), u_input.b);
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0.c.zw, vec2<f32>(-467f, global0.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.c.xx, global0.c.zx) - vec2<f32>(global0.c.x, global0.c.x)), (_wgslsmith_dot_vec4_u32(vec4<u32>(49055u, arg_3.x, u_input.e.x, arg_3.x), ~vec4<u32>(1u, 1u, global0.a, u_input.c.x)) >> (_wgslsmith_mult_u32(4294967295u | arg_3.x, ~global0.a) % 32u)) <= _wgslsmith_mult_u32(firstTrailingBit(1142u), abs(~arg_3.x))));
    let var_1 = Struct_2(vec2<bool>(all(select(!arg_1, func_3(arg_1.zz, u_input.a, Struct_2(arg_1.xx, u_input.c.yz, Struct_1(u_input.e.x, arg_2.b.x, global0.c, u_input.b))), true)), !(!all(vec2<bool>(arg_2.b.x, global0.b)))), abs(min(vec2<u32>(countOneBits(43016u), max(74753u, 0u)), ~(~vec2<u32>(arg_3.x, u_input.e.x)))), Struct_1(abs(35744u << (0u % 32u)) | global0.a, !all(select(arg_2.b, arg_1.zxw, global0.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global0.c)), vec4<f32>(var_0.x, -1608f, _wgslsmith_f_op_f32(1070f * var_0.x), _wgslsmith_f_op_f32(min(var_0.x, -376f))), vec4<bool>(arg_2.a > 19172i, true, false, global0.b))), firstTrailingBit(0i | _wgslsmith_clamp_i32(u_input.a.x, 1i, -8599i))));
    var var_2 = func_3(!vec2<bool>(func_3(var_1.a, u_input.a, var_1).x, true), u_input.a, Struct_2(!(!vec2<bool>(global0.b, arg_0)), ~reverseBits(arg_3.yx), var_1.c)).x & true;
    var var_3 = vec3<bool>(any(arg_2.b), arg_2.b.x, false);
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(arg_1.x, any(!(!vec4<bool>(true, global0.b, arg_2.b.x, true))), global0.c, arg_2.a));
    global1 = array<vec3<f32>, 27>();
    let var_1 = Struct_1(~arg_1.x, arg_2.b.x || true, _wgslsmith_f_op_vec4_f32(vec4<f32>(665f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * 225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))) * vec4<f32>(466f, -1641f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1134f - global0.c.x) + _wgslsmith_f_op_f32(sign(-2339f))), _wgslsmith_f_op_f32(floor(-1478f)))), u_input.a.x);
    global0 = Struct_1(33658u, any(func_3(!(!arg_2.b.yx), ~_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(1i, arg_2.a), u_input.a), Struct_2(vec2<bool>(var_1.b, var_1.b), vec2<u32>(var_1.a, 24913u), Struct_1(26855u, false, vec4<f32>(var_0.a.c.x, global0.c.x, 1000f, 1230f), arg_2.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, 924f, _wgslsmith_f_op_f32(min(789f, _wgslsmith_div_f32(var_0.a.c.x, 700f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.x - 1267f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.c.x)), -921f, 221f, _wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_vec4_f32(-global0.c))), reverseBits(func_2(global0.b, vec4<bool>(false, var_1.b, true, var_1.b), func_2(var_0.a.b, vec4<bool>(global0.b, false, false, var_0.a.b), arg_2, arg_1.wzw), arg_1.ywz).a | (-2147483647i ^ -global0.d)));
    let var_2 = i32(-1i) * -(~_wgslsmith_div_i32(min(u_input.a.x, -2147483647i), 1i));
    return var_1;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = u_input.c;
    global0 = func_4(9280i, ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.x, 0u, 4294967295u, 39201u) & vec4<u32>(arg_3.c.a, arg_3.b.x, 4294967295u, u_input.e.x), vec4<u32>(76694u, 1u, var_0.x, arg_1.c.a)), _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(54087u, u_input.e.x, var_0.x, arg_1.c.a), var_0)), any(arg_0.a) | (arg_1.c.b | arg_1.c.b)), func_2(false, !(!vec4<bool>(arg_3.a.x, arg_1.a.x, false, arg_1.a.x)), Struct_4(global0.d, select(vec3<bool>(arg_0.a.x, false, arg_2.c.b), !vec3<bool>(true, global0.b, true), !vec3<bool>(arg_2.c.b, true, true))), var_0.zzw));
    global0 = Struct_1(~firstTrailingBit(var_0.x), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.c.c.x)), global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1146f)) * -1000f), arg_0.c.c.x), arg_2.c.c, select(select(vec4<bool>(false, true, arg_3.c.b, true), !vec4<bool>(true, arg_1.c.b, arg_0.a.x, false), func_3(arg_3.a, vec2<i32>(arg_3.c.d, global0.d), arg_0)), !vec4<bool>(false, false, true, arg_1.c.b), global0.b))), 1i);
    global1 = array<vec3<f32>, 27>();
    global1 = array<vec3<f32>, 27>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.c.x - 100f), _wgslsmith_f_op_f32(trunc(-825f)))))));
    var var_2 = vec4<i32>((-2147483647i << ((_wgslsmith_sub_u32(global0.a, 27678u) | func_1(Struct_2(vec2<bool>(true, var_0), vec2<u32>(u_input.c.x, 0u), Struct_1(0u, false, global0.c, 28556i)), Struct_2(vec2<bool>(global0.b, false), vec2<u32>(u_input.c.x, u_input.c.x), Struct_1(31941u, var_0, global0.c, 2147483647i)), Struct_2(vec2<bool>(false, false), u_input.c.xx, Struct_1(20379u, global0.b, global0.c, u_input.b)), Struct_2(vec2<bool>(true, global0.b), u_input.c.xy, Struct_1(1u, var_0, vec4<f32>(var_1.x, global0.c.x, -877f, global0.c.x), u_input.b)))) % 32u)) ^ countOneBits((u_input.b >> (global0.a % 32u)) >> (~0u % 32u)), -_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(u_input.a.x, -1i) ^ 1i), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.a.x, u_input.d, u_input.a.x)), -(vec3<i32>(u_input.d, global0.d, u_input.a.x) | vec3<i32>(-1i, -51259i, global0.d))) | _wgslsmith_sub_i32(func_4(global0.d, vec4<u32>(4294967295u, u_input.e.x, 1u, global0.a), Struct_4(global0.d, vec3<bool>(true, false, false))).d, -_wgslsmith_mod_i32(1i, -2147483647i)), u_input.a.x);
    global1 = array<vec3<f32>, 27>();
    let var_3 = u_input.b;
    let var_4 = func_4(2147483647i, ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, 1u, _wgslsmith_sub_u32(u_input.c.x, 72168u), _wgslsmith_sub_u32(global0.a, u_input.e.x)), u_input.c << (select(vec4<u32>(0u, u_input.e.x, global0.a, global0.a), u_input.c, vec4<bool>(false, global0.b, var_0, var_0)) % vec4<u32>(32u))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_1.x, var_0))) <= _wgslsmith_f_op_f32(-var_1.x), vec4<bool>(any(vec3<bool>(true, var_0, false)), _wgslsmith_div_f32(global0.c.x, var_1.x) <= _wgslsmith_f_op_f32(-var_1.x), u_input.e.x != 58931u, all(vec3<bool>(false, global0.b, var_0))), func_2(any(vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, true, var_0, global0.b), vec4<bool>(false, true, true, false), vec4<bool>(var_0, global0.b, false, false)), vec4<bool>(global0.b, var_0, false, true), true), func_2(!var_0, func_3(vec2<bool>(true, global0.b), vec2<i32>(global0.d, 1i), Struct_2(vec2<bool>(true, global0.b), u_input.c.ww, Struct_1(u_input.e.x, true, global0.c, global0.d))), func_2(true, vec4<bool>(false, var_0, global0.b, false), Struct_4(var_2.x, vec3<bool>(true, false, global0.b)), u_input.c.zwy), min(vec3<u32>(19224u, global0.a, 0u), vec3<u32>(38838u, 4294967295u, u_input.c.x))), vec3<u32>(~global0.a, 58362u, u_input.e.x)), _wgslsmith_sub_vec3_u32(~(~u_input.c.wxy), ~vec3<u32>(global0.a, global0.a, global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, var_1.x, -234f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_4.c.wyz)))), var_0 && var_4.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.x))))));
}

