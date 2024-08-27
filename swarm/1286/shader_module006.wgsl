struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32>;

var<private> global2: f32;

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_3(Struct_1(1u, true, vec3<u32>(7899u, 4294967295u, 33303u), -1070f, 544f)), 4294967295u, 1i), Struct_4(Struct_3(Struct_1(68809u, true, vec3<u32>(0u, 11629u, 4294967295u), -223f, -1043f)), 0u, -25571i), Struct_4(Struct_3(Struct_1(4294967295u, true, vec3<u32>(16097u, 45059u, 9753u), -507f, 1143f)), 0u, 1i), Struct_4(Struct_3(Struct_1(2776u, true, vec3<u32>(32304u, 0u, 4294967295u), 134f, -1106f)), 1207u, i32(-2147483648)), Struct_4(Struct_3(Struct_1(55286u, true, vec3<u32>(71734u, 14635u, 1u), 1000f, -1324f)), 27717u, 1i), Struct_4(Struct_3(Struct_1(36086u, false, vec3<u32>(0u, 4294967295u, 1u), 227f, -2534f)), 0u, -1i), Struct_4(Struct_3(Struct_1(15907u, true, vec3<u32>(296u, 1u, 17806u), -599f, -1150f)), 0u, -1i), Struct_4(Struct_3(Struct_1(4294967295u, false, vec3<u32>(0u, 61563u, 10039u), -192f, -972f)), 0u, 50719i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    global3 = array<Struct_4, 8>();
    let var_0 = global3[_wgslsmith_index_u32(5407u, 8u)];
    let var_1 = select(!select(vec3<bool>(!var_0.a.a.b, var_0.a.a.b == var_0.a.a.b, true), !select(vec3<bool>(true, var_0.a.a.b, var_0.a.a.b), vec3<bool>(var_0.a.a.b, true, false), false), select(false, true, !var_0.a.a.b)), !vec3<bool>(true, _wgslsmith_f_op_f32(2262f - -2392f) != _wgslsmith_f_op_f32(-var_0.a.a.e), !(var_0.a.a.b || true)), !(!(19944i < (1i >> (var_0.a.a.c.x % 32u)))));
    let var_2 = var_0.a.a.c.zy;
    let var_3 = true;
    return global0.b.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = ~(~(-arg_0.wz));
    var var_1 = arg_3;
    let var_2 = vec3<u32>(1u, _wgslsmith_dot_vec3_u32(arg_1.c, arg_1.c), firstLeadingBit(select(select(_wgslsmith_dot_vec3_u32(arg_1.c, arg_1.c), 1u, false), ~arg_1.c.x, all(arg_2))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, var_1.a.d, 1892f))))), _wgslsmith_f_op_vec3_f32(-global0.b.xwx)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.e + var_1.a.e)), _wgslsmith_f_op_f32(f32(-1f) * -333f), arg_3.a.d)));
    var var_3 = global3[_wgslsmith_index_u32(~countOneBits(var_1.a.a), 8u)];
    return arg_3;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = vec3<bool>(true, true, any(arg_0.a.zx));
    var var_1 = func_3(vec4<i32>(-countOneBits(_wgslsmith_add_i32(-41170i, arg_2)), min(1i, 1i), -8289i, ~arg_2), func_3(_wgslsmith_div_vec4_i32(-vec4<i32>(11241i, u_input.c, 2438i, 1i), reverseBits(vec4<i32>(arg_3.c, 0i, 2147483647i, arg_3.c))) >> (~abs(u_input.b) % vec4<u32>(32u)), Struct_1(arg_3.b, all(select(var_0, vec3<bool>(false, var_0.x, false), arg_0.a.x)), ~(~vec3<u32>(66095u, arg_1.c.x, 1287u)), _wgslsmith_f_op_f32(ceil(-511f)), 973f), select(select(!arg_0.a.xyw, var_0, var_0), select(!vec3<bool>(false, arg_1.b, arg_3.a.a.b), !vec3<bool>(arg_1.b, true, var_0.x), false), select(arg_0.c.a.c.x >= u_input.a.x, !arg_1.b, false && arg_1.b)), func_3(max(vec4<i32>(u_input.c, -56831i, arg_3.c, arg_3.c), select(vec4<i32>(-2147483647i, u_input.c, u_input.c, arg_2), vec4<i32>(-1205i, 2147483647i, 1i, -89022i), arg_1.b)), arg_3.a.a, var_0, func_3(~vec4<i32>(arg_3.c, arg_3.c, 45444i, arg_3.c), Struct_1(4294967295u, var_0.x, vec3<u32>(4294967295u, arg_1.c.x, 1u), -1441f, arg_1.e), arg_0.a.zyw, arg_3.a))).a, vec3<bool>(arg_0.a.x, var_0.x, false), arg_3.a).a.e;
    let var_2 = abs(_wgslsmith_dot_vec3_u32(reverseBits(~arg_0.c.a.c), vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 94745u, 16568u, arg_1.a), var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.a.c.x, 14258u, 109498u, arg_0.c.a.c.x), u_input.b)), arg_1.c.x, min(1u, _wgslsmith_sub_u32(4294967295u, 1u)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f * -111f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))));
    let var_3 = arg_3.a.a.c;
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global0.a)), vec3<f32>(arg_1.e, _wgslsmith_f_op_f32(max(1071f, -595f)), _wgslsmith_f_op_f32(-global0.b.x)), arg_1.b)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.a.a.d), arg_0.b.a.d)), 1035f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(620f)) + _wgslsmith_f_op_f32(f32(-1f) * -265f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = arg_1;
    global0 = func_4(Struct_5(!(!(!vec4<bool>(false, false, true, arg_1.b))), func_3(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.c, 1i, u_input.c)), ~vec4<i32>(0i, 1i, u_input.c, u_input.c)), Struct_1(1u & var_0.a, true, countOneBits(u_input.b.wzz), _wgslsmith_f_op_f32(func_2()), arg_1.e), select(vec3<bool>(arg_1.b, var_0.b, var_0.b), !vec3<bool>(arg_1.b, arg_1.b, var_0.b), vec3<bool>(true, var_0.b, arg_1.b)), Struct_3(var_0)), Struct_3(arg_1)), arg_1, _wgslsmith_sub_i32(~u_input.c, u_input.c), Struct_4(func_3(abs(vec4<i32>(-16569i, u_input.c, u_input.c, 1i) >> (vec4<u32>(arg_2, 1u, var_0.a, 0u) % vec4<u32>(32u))), Struct_1(12625u, false, select(global1.xzy, global1.www, true), _wgslsmith_f_op_f32(sign(arg_1.e)), global0.a.x), select(!vec3<bool>(var_0.b, var_0.b, arg_1.b), !vec3<bool>(arg_1.b, false, false), !vec3<bool>(arg_1.b, arg_1.b, false)), func_3(vec4<i32>(u_input.c, u_input.c, 1i, -1i), func_3(vec4<i32>(u_input.c, -1i, u_input.c, 25852i), Struct_1(4294967295u, arg_1.b, global1.xxx, 971f, 2304f), vec3<bool>(var_0.b, false, arg_1.b), Struct_3(Struct_1(arg_2, true, global1.zxz, 888f, -110f))).a, vec3<bool>(false, arg_1.b, true), func_3(vec4<i32>(u_input.c, 1i, u_input.c, -1i), Struct_1(0u, true, vec3<u32>(81680u, var_0.a, 34376u), arg_1.e, arg_0), vec3<bool>(var_0.b, false, true), Struct_3(Struct_1(arg_1.c.x, true, var_0.c, global0.a.x, -1040f))))), 4294967295u, u_input.c));
    global2 = _wgslsmith_f_op_f32(-var_0.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(-global0.a.xx);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global0.b.yy, vec2<f32>(var_1.x, 1000f), var_0.b)))))), vec2<f32>(_wgslsmith_f_op_f32(func_2()), -1406f));
    return Struct_3(func_3(firstTrailingBit(firstTrailingBit(select(vec4<i32>(u_input.c, 3016i, 2147483647i, 2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<bool>(var_0.b, arg_1.b, arg_1.b, var_0.b)))), func_3(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) & vec4<i32>(u_input.c, 1i, 15596i, -16126i)), Struct_1(~0u, !var_0.b, ~arg_1.c, 1f, _wgslsmith_f_op_f32(abs(-555f))), !select(vec3<bool>(false, false, false), vec3<bool>(var_0.b, arg_1.b, arg_1.b), true), func_3(-vec4<i32>(u_input.c, -2147483647i, u_input.c, 1i), Struct_1(4294967295u, var_0.b, var_0.c, var_0.e, global0.b.x), !vec3<bool>(false, false, var_0.b), func_3(vec4<i32>(-11786i, -2147483647i, u_input.c, -26808i), Struct_1(21127u, true, arg_1.c, 266f, 211f), vec3<bool>(true, false, var_0.b), Struct_3(Struct_1(4294967295u, arg_1.b, vec3<u32>(arg_1.c.x, var_0.c.x, global1.x), 1000f, -1000f))))).a, select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, arg_1.b)), select(vec3<bool>(arg_1.b, var_0.b, true), vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(false, var_0.b, true)), all(vec4<bool>(true, true, arg_1.b, true))), select(select(vec3<bool>(var_0.b, arg_1.b, var_0.b), vec3<bool>(false, arg_1.b, false), arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), select(vec3<bool>(arg_1.b, false, false), vec3<bool>(false, arg_1.b, true), false)), select(arg_1.b, arg_1.b, func_3(vec4<i32>(u_input.c, u_input.c, u_input.c, -5249i), Struct_1(0u, var_0.b, global1.xwy, 127f, var_2.x), vec3<bool>(false, arg_1.b, arg_1.b), Struct_3(arg_1)).a.b)), func_3(-(vec4<i32>(u_input.c, u_input.c, 1i, 14466i) << (u_input.b % vec4<u32>(32u))), func_3(vec4<i32>(u_input.c, 43275i, u_input.c, -18175i) & vec4<i32>(-2147483647i, 2147483647i, u_input.c, 18344i), Struct_1(var_0.a, var_0.b, vec3<u32>(12224u, 0u, var_0.a), 563f, arg_1.e), vec3<bool>(var_0.b, true, var_0.b), func_3(vec4<i32>(-25227i, u_input.c, -2147483647i, u_input.c), arg_1, vec3<bool>(false, var_0.b, false), Struct_3(Struct_1(u_input.a.x, arg_1.b, vec3<u32>(arg_2, u_input.b.x, var_0.c.x), var_2.x, -2062f)))).a, vec3<bool>(all(vec3<bool>(arg_1.b, var_0.b, true)), arg_1.b, true), Struct_3(Struct_1(132675u, var_0.b, global1.wzw, -683f, -1000f)))).a);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_5) -> vec3<i32> {
    global0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.b.wzw, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, arg_0) + _wgslsmith_f_op_vec3_f32(-global0.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2010f), -1754f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.x))))), global0.b);
    let var_0 = u_input.c;
    global1 = vec4<u32>(_wgslsmith_dot_vec3_u32(abs(countOneBits(vec3<u32>(global1.x, 0u, 1u))), ~(vec3<u32>(9383u, 4294967295u, 0u) ^ vec3<u32>(global1.x, 0u, u_input.b.x))) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(49876u >> (arg_1.c.a.a % 32u), arg_1.b.a.c.x << (22555u % 32u)), u_input.a.x >> (_wgslsmith_clamp_u32(global1.x, u_input.b.x, 13096u) % 32u)) % 32u), 22614u, ~abs(u_input.b.x | 0u), 42651u);
    var var_1 = vec4<bool>(!any(!arg_1.a), true, arg_1.a.x, false);
    global0 = Struct_2(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(trunc(215f)), func_1(645f, Struct_1(global1.x, arg_1.a.x, vec3<u32>(33368u, u_input.b.x, 0u), arg_1.c.a.e, arg_1.c.a.e), global1.x).a, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 4294967295u))).a.e), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x) - 1f), 1659f)), 157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) - -401f)));
    return vec3<i32>(-(~u_input.c), ~1i, 40660i) >> (reverseBits(arg_1.b.a.c) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(u_input.b, vec4<u32>(reverseBits(~3490u), global1.x, 56923u, global1.x));
    global1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.x, ~17130u, global1.x), u_input.a.x), 52960u, _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(~3048u, _wgslsmith_clamp_u32(50272u, 0u, u_input.b.x))), var_0.x), _wgslsmith_mod_vec4_u32(~u_input.b, var_0) ^ u_input.b);
    var var_1 = ~(-func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.b.x, -1392f) * vec3<f32>(global0.b.x, 239f, -1001f))), Struct_5(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), func_1(global0.b.x, Struct_1(global1.x, false, u_input.b.wwx, global0.b.x, global0.b.x), 0u), func_1(global0.b.x, Struct_1(1u, false, vec3<u32>(0u, u_input.b.x, u_input.b.x), global0.b.x, global0.a.x), global1.x))));
    let var_2 = vec3<u32>(~(~(~func_1(1005f, Struct_1(1u, false, global1.zww, 2026f, -2438f), u_input.b.x).a.c.x)), var_0.x, _wgslsmith_div_u32(4294967295u, global1.x));
    global3 = array<Struct_4, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~abs(u_input.a.x), ~abs(global1.x)) << (1u % 32u), var_1.x);
}

