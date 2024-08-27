struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -194f)))));
    let var_1 = -782f;
    var_0 = Struct_2(var_0.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) * _wgslsmith_f_op_f32(trunc(var_0.a.b))), _wgslsmith_f_op_f32(max(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) - 1000f)))));
    let var_3 = any(!vec2<bool>(!var_0.a.a, any(vec4<bool>(true, false, var_0.a.a, true))));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~(~1u));
    var_0 = _wgslsmith_dot_vec4_u32(~(~(~reverseBits(vec4<u32>(4294967295u, 1u, 26278u, 1u)))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(4294967295u, 0u, 8785u, 18727u)), abs(vec4<u32>(52395u, 1u, 1u, 22398u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(86773u, 1u, 4294967295u, 21802u), vec4<u32>(34717u, 24214u, 8141u, 39470u), vec4<bool>(true, true, false, false)), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = countOneBits(29286u);
    var var_2 = Struct_2(Struct_1(true, -327f));
    var var_3 = ~(vec2<u32>(var_1, func_3()) >> (_wgslsmith_clamp_vec2_u32(select(reverseBits(vec2<u32>(var_1, 1u)), vec2<u32>(var_1, 0u) ^ vec2<u32>(54885u, 4294967295u), vec2<bool>(false, var_2.a.a)), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(1u, var_1)), select(~vec2<u32>(var_1, var_1), vec2<u32>(26289u, var_1), false)) % vec2<u32>(32u)));
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_2(Struct_1(arg_1.a.a, -331f));
    var var_1 = arg_1.a;
    var var_2 = !(!select(select(select(vec4<bool>(false, arg_1.a.a, arg_3, false), vec4<bool>(arg_1.a.a, var_0.a.a, arg_3, false), arg_0.a), select(vec4<bool>(false, true, var_1.a, false), vec4<bool>(true, var_1.a, arg_3, var_1.a), true), select(vec4<bool>(arg_0.a, var_0.a.a, arg_1.a.a, arg_1.a.a), vec4<bool>(false, true, arg_3, false), vec4<bool>(true, true, arg_3, arg_3))), !vec4<bool>(false, arg_0.a, true, false), _wgslsmith_f_op_f32(arg_1.a.b * arg_0.b) == arg_2));
    return _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_add_u32(14776u, 4261u)), 1u, _wgslsmith_clamp_u32(~12970u, 1u, 70943u)), abs(~(~13484u)), func_3()), ~_wgslsmith_add_u32(~(~0u), 1u));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(true, 1266f));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_2().b)) * _wgslsmith_f_op_f32(384f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1005f * var_0.a.b)))));
    var_1 = arg_1;
    var_1 = arg_1;
    return Struct_2(Struct_1(!arg_1.a, 112f));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = arg_0;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.b), arg_1.a.b, _wgslsmith_f_op_f32(arg_2.b - arg_2.b)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1151f, arg_1.a.b, arg_1.a.b) * vec3<f32>(arg_2.b, -965f, arg_2.b)), vec3<f32>(arg_1.a.b, arg_1.a.b, 1000f), vec3<bool>(true, arg_1.a.a, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(arg_1.a.b + -1596f), _wgslsmith_div_f32(-1378f, arg_1.a.b))))));
    var var_2 = func_5(vec4<u32>(func_4(func_2(), Struct_2(func_2()), _wgslsmith_f_op_f32(-func_2().b), arg_2.a), ~func_3(), 47245u, ~select(max(0u, 0u), ~4294967295u, arg_1.a.a | false)), func_2());
    let var_3 = Struct_2(func_5(countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 23909u, 60635u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(arg_2.a, var_1.x)).a);
    return _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(6081u, 1u, 66854u)) | reverseBits(vec3<u32>(1u, 1u, 1u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(91590u, 0u, 54245u)))), vec3<u32>(38773u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(52999u, 26579u), vec2<u32>(43161u, 21044u)), 0u, 2646u) & _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 61811u, 11874u), vec3<u32>(4294967295u, 45405u, 57964u)), ~vec3<u32>(39134u, 80758u, 1u)), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 56642u, 0u, 0u), vec4<u32>(4294967295u, 1u, 12651u, 1u)), 4294967295u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 874u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(8346u, 0u, 1u), vec3<u32>(0u, 0u, 49939u))), abs(select(vec3<u32>(1u, 18130u, 4294967295u), vec3<u32>(35781u, 1u, 1u), vec3<bool>(false, true, true)))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(func_1(true, Struct_2(Struct_1(true, 2144f)), Struct_1(false, 260f)), vec3<u32>(4294967295u, 1u, 97673u)), abs(~vec3<u32>(23641u, 35101u, 1u))) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6814u, 3691u, 4294967295u), vec4<u32>(17415u, 0u, 62274u, 122292u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(51917u, 1u, 0u), vec3<u32>(39801u, 4294967295u, 27954u)), 52741u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(~vec3<u32>(54203u, 1u, 36659u), vec3<u32>(14876u, 68328u, 27436u))));
    let var_1 = _wgslsmith_div_u32(38884u, reverseBits(~(~var_0.x))) & 34173u;
    var var_2 = all(vec2<bool>(all(vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, all(vec3<bool>(false, false, false)))), _wgslsmith_mod_u32(var_0.x, 8120u) < 80594u));
    var_2 = true;
    var_2 = false;
    let var_3 = func_5(~firstTrailingBit(select(vec4<u32>(var_1, var_0.x, 0u, var_1), vec4<u32>(var_0.x, var_1, var_0.x, var_0.x), vec4<bool>(true, true, false, true))) & _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, var_0.x, var_0.x, var_0.x)), firstTrailingBit(firstLeadingBit(vec4<u32>(var_1, 19015u, var_0.x, var_0.x)))), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-362f, -193f) + _wgslsmith_f_op_f32(sign(-1000f))))));
    var_2 = ~max(~(25802u >> (var_1 % 32u)), var_1) > _wgslsmith_mult_u32(var_1, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~34783u, var_0.x), 49465u));
    var var_4 = Struct_2(Struct_1(func_5(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.zy, var_0.yz), abs(30595u), var_1, max(0u, var_0.x)), var_3.a).a.a, 777f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec2_i32(u_input.a.ww, vec2<i32>(u_input.a.x, u_input.a.x))) << (func_1(any(vec3<bool>(var_4.a.a, true, var_4.a.a)) && var_3.a.a, Struct_2(var_3.a), Struct_1(true | var_4.a.a, var_3.a.b)).yx % vec2<u32>(32u)), 20860i, 511f);
}

