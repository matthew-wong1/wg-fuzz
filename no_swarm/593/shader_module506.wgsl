struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, ~arg_3), max(~(vec2<i32>(arg_3, -31678i) ^ countOneBits(vec2<i32>(-17049i, 37188i))), vec2<i32>(-_wgslsmith_add_i32(u_input.a, u_input.b), -2147483647i)));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, arg_2.a), 1u)), arg_2.a >> (~select(arg_2.d.a, arg_2.b.a, arg_1.a) % 32u)), ~(~(max(arg_2.d.a, 0u) & min(4294967295u, arg_2.b.a))));
    var_0 = ~firstLeadingBit(~max(vec2<i32>(36487i, u_input.b), vec2<i32>(1i, 0i)) ^ ((vec2<i32>(37993i, 22310i) ^ vec2<i32>(u_input.a, 22924i)) ^ vec2<i32>(2147483647i, 2147483647i)));
    var var_2 = Struct_4(var_1.x, arg_2.b, vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-919f - 1217f), _wgslsmith_f_op_f32(exp2(arg_2.c.x)))), arg_1.b, arg_0)), -382f), Struct_2(41883u));
    let var_3 = Struct_2(arg_2.b.a);
    return firstLeadingBit(~var_2.a);
}

fn func_2() -> i32 {
    let var_0 = ~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(func_3(false, Struct_1(false, -1521f, false), Struct_4(1u, Struct_2(62249u), vec3<f32>(476f, 196f, -1123f), Struct_2(1u)), -21642i), 1u, _wgslsmith_mod_u32(11397u, 1u)), vec3<u32>(1u, ~1u, 1u << (1u % 32u))));
    let var_1 = var_0.zz;
    let var_2 = Struct_2(0u);
    let var_3 = select(vec3<i32>(reverseBits(u_input.a) & u_input.a, -abs(~u_input.a), ~u_input.b), ~(-max(vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(u_input.b, u_input.a, u_input.b) << (vec3<u32>(var_1.x, 28696u, 39080u) % vec3<u32>(32u)))), vec3<bool>(select(all(vec2<bool>(false, false)) || true, true | select(false, false, false), true | (2147483647i < u_input.a)), true, false));
    let var_4 = ~(~(~reverseBits(firstLeadingBit(29153i))));
    return firstLeadingBit(~(_wgslsmith_sub_i32(~(-32609i), u_input.b) >> (~_wgslsmith_clamp_u32(var_2.a, var_2.a, 0u) % 32u)));
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~(~17651i), u_input.a, -firstTrailingBit(-1i)), ~(~(vec3<i32>(u_input.a, u_input.a, u_input.b) | vec3<i32>(1i, u_input.a, u_input.b)))), -select(~(-24957i), -func_2(), false));
    var var_1 = arg_0.b.a;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.d.a, arg_0.a), _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.d.a, arg_0.b.a), vec3<u32>(arg_0.b.a, 55289u, 34400u))), (vec3<u32>(arg_0.d.a, arg_0.d.a, 43927u) >> (vec3<u32>(1u, arg_0.b.a, 49125u) % vec3<u32>(32u))) & vec3<u32>(arg_0.a, arg_0.a, 0u))), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a, 4294967295u), ~1u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -429f) - _wgslsmith_f_op_f32(243f - 1101f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-509f - 475f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1517f + 597f)), _wgslsmith_f_op_f32(select(-2133f, -830f, all(vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)) * 1f))));
    var var_1 = Struct_4(arg_0.x, Struct_2(~(~(~arg_0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-981f, var_0.x, var_0.x)))) - vec3<f32>(-1218f, -2482f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(abs(558f)), var_0.x)), !(arg_0.x != arg_0.x) & select(true, true, false))), Struct_2(arg_0.x));
    let var_2 = Struct_2(0u);
    let var_3 = Struct_2(4294967295u);
    let var_4 = reverseBits(select(~arg_0.yyy, select(~vec3<u32>(arg_0.x, 4294967295u, 40056u), arg_0.zzx, vec3<bool>(true, true, true)), select(vec3<bool>(true, true, var_2.a != 5384u), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))));
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1252f))))))));
    var var_1 = arg_1;
    var var_2 = Struct_4(var_1.a, Struct_2(72224u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))))), Struct_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u >> (arg_1.a % 32u), arg_1.a), select(func_3(true, Struct_1(arg_0.x, -946f, true), Struct_4(0u, Struct_2(4294967295u), vec3<f32>(856f, var_0.x, var_0.x), arg_1), u_input.b), _wgslsmith_sub_u32(arg_1.a, 6648u), func_4(vec4<u32>(arg_1.a, 0u, var_1.a, var_1.a), vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, u_input.b))))));
    return StorageBuffer(var_2.c.x, min(reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(16785i, 1i, u_input.a), -vec3<i32>(u_input.b, 30581i, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(var_1.a, 45656u, 29941u) % vec3<u32>(32u)))), -vec3<i32>(-50156i, u_input.a, u_input.b) & vec3<i32>(i32(-1i) * -46533i, i32(-1i) * -44268i, -u_input.b)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -169f);
    let x = u_input.a;
    s_output = func_5(vec4<bool>(func_4(vec4<u32>(~1u, func_1(Struct_4(0u, Struct_2(5807u), vec3<f32>(-302f, 324f, var_0), Struct_2(1u))), 54051u, 1u), ~(vec2<i32>(4617i, u_input.a) | vec2<i32>(1i, -10670i)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(79554i, -63871i), vec2<i32>(-16942i, u_input.a)), vec2<i32>(u_input.b, u_input.a) | vec2<i32>(25464i, u_input.b))), !all(vec3<bool>(true, true, true)), !(func_4(vec4<u32>(0u, 7595u, 56436u, 1u), vec2<i32>(-1i, u_input.a), vec2<i32>(1i, u_input.a)) && any(vec4<bool>(false, false, false, false))), u_input.a >= (i32(-1i) * -u_input.b)), Struct_2(4294967295u));
}

