struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 4294967295u);

var<private> global1: u32 = 4294967295u;

var<private> global2: u32;

var<private> global3: array<Struct_2, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.b * _wgslsmith_f_op_f32(floor(1433f)))))), arg_0.b.a.c);
    var var_1 = _wgslsmith_div_vec4_u32(~firstLeadingBit(abs(arg_0.b.d.c)) | _wgslsmith_clamp_vec4_u32(~arg_0.c.c, vec4<u32>(global0.x, _wgslsmith_add_u32(41074u, 13039u), _wgslsmith_mod_u32(0u, 34290u), abs(arg_0.a.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.x, 39329u, global0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1607u, 49305u), arg_0.a.c, vec4<u32>(4294967295u, 77240u, 34722u, global0.x)))), _wgslsmith_mult_vec4_u32(~arg_0.b.d.c, ~(~vec4<u32>(arg_0.a.c.x, 29800u, var_0.c.x, arg_0.c.c.x))));
    var var_2 = ~vec2<u32>(u_input.c, _wgslsmith_clamp_u32(max(0u, var_1.x), 1u, ~57983u)) << (firstTrailingBit(vec2<u32>(~firstLeadingBit(arg_0.b.c), u_input.c)) % vec2<u32>(32u));
    global0 = _wgslsmith_sub_vec3_u32(countOneBits(var_0.c.ywy), abs(~arg_0.a.c.yxw));
    global1 = min(var_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.c, ~0u, firstLeadingBit(var_2.x), 1u), arg_0.a.c));
    return 1u;
}

fn func_2() -> Struct_3 {
    global3 = array<Struct_2, 9>();
    global3 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1363f + -1252f)))));
    var var_1 = global3[_wgslsmith_index_u32(u_input.c, 9u)];
    var var_2 = ~abs(-(~vec2<i32>(-46601i, -1i)));
    return Struct_3(var_1.a, Struct_2(Struct_1(vec2<bool>(true && var_1.a.a.x, !var_1.a.a.x), _wgslsmith_f_op_f32(-var_1.a.b), vec4<u32>(_wgslsmith_div_u32(var_1.d.c.x, 4294967295u), func_3(Struct_3(Struct_1(vec2<bool>(true, false), var_0, var_1.a.c), global3[_wgslsmith_index_u32(0u, 9u)], var_1.d)), 1u, 254u)), vec2<f32>(var_0, var_1.d.b), _wgslsmith_div_u32(firstTrailingBit(23076u), _wgslsmith_add_u32(u_input.c, var_1.d.c.x)), Struct_1(var_1.a.a, _wgslsmith_f_op_f32(-var_1.a.b), reverseBits(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c)))), var_1.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(vec2<bool>(all(!select(vec2<bool>(true, false), arg_0, false)), arg_0.x), _wgslsmith_f_op_f32(ceil(1008f)), firstTrailingBit(_wgslsmith_div_vec4_u32(select(firstLeadingBit(vec4<u32>(0u, u_input.c, global0.x, 4294967295u)), vec4<u32>(0u, global0.x, global0.x, 1u), all(arg_0)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, u_input.c, u_input.c, 4294967295u), firstTrailingBit(vec4<u32>(0u, 36741u, 4294967295u, global0.x))))));
    var var_1 = func_2();
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.b.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2().b.b + var_1.b.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b, var_0.b), _wgslsmith_f_op_f32(select(-286f, var_0.b, var_2)))))));
    var_1 = func_2();
    return Struct_2(Struct_1(vec2<bool>(all(!vec4<bool>(true, var_2, true, false)), !any(vec4<bool>(false, false, var_1.b.a.a.x, var_1.b.d.a.x))), var_0.b, ~(~var_0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1663f, 845f), 469f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(abs(var_3.x)))) + vec2<f32>(213f, 298f)), u_input.c, Struct_1(!(!var_0.a), _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(max(-1491f, func_2().b.d.b)))), vec4<u32>(~global0.x >> (_wgslsmith_mult_u32(var_0.c.x, 10629u) % 32u), 4294967295u, 9328u, ~max(2576u, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(vec2<bool>(all(vec4<bool>(true, true, false, true)), true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), -_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, u_input.a), reverseBits(vec2<i32>(u_input.a, 16667i))) | ((vec2<i32>(-34538i, 36237i) | select(vec2<i32>(u_input.a, -12960i), vec2<i32>(80500i, u_input.b), vec2<bool>(true, false))) >> (global0.xy % vec2<u32>(32u))));
    global1 = 8705u;
    let var_1 = vec2<f32>(var_0.d.b, func_1(select(vec2<bool>(false, u_input.b < u_input.a), var_0.d.a, select(var_0.d.a, select(vec2<bool>(true, false), var_0.d.a, var_0.d.a.x), var_0.a.a.x)), ~abs(-vec2<i32>(-19144i, 24211i))).b.x);
    let var_2 = vec4<f32>(1551f, 2160f, _wgslsmith_f_op_f32(sign(func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), func_1(vec2<bool>(var_0.d.a.x, false), vec2<i32>(-2147483647i, 4592i)).a.a), vec2<i32>(-1i) * -vec2<i32>(u_input.a, 0i)).b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f + var_1.x)), _wgslsmith_f_op_f32(var_1.x + var_0.d.b))) + -548f));
    var var_3 = var_0.d.a.x;
    global1 = u_input.c;
    var var_4 = var_0.d;
    let var_5 = func_2();
    var var_6 = ~vec3<u32>(var_5.c.c.x, ~(~u_input.c) | ~0u, _wgslsmith_sub_u32(~global0.x, var_5.c.c.x >> (var_0.d.c.x % 32u)) >> (global0.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(693f, 1528f, -1088f) * _wgslsmith_f_op_vec3_f32(var_2.zyw - vec3<f32>(-934f, 1000f, -1918f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.www))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(var_2.zzz, vec3<f32>(445f, -3446f, 1386f))), var_2.xzz)))), _wgslsmith_f_op_f32(f32(-1f) * -1543f), func_2().b.b);
}

