struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = 2147483647i;
    global1 = -1408f;
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1390f, global3.b.x, true)))), arg_2.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(958f, -481f)))) - _wgslsmith_f_op_f32(-arg_0.b.b.x)));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.d.a, ~4294967295u), 8u)]);
    var var_2 = vec2<bool>(arg_0.c, true);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.d.x + arg_1.x), _wgslsmith_f_op_f32(min(-533f, 1454f)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_vec2_f32(arg_1.zz * _wgslsmith_div_vec2_f32(arg_2.b.d, vec2<f32>(-276f, global3.d.x))))))));
}

fn func_2() -> Struct_5 {
    let var_0 = any(vec3<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true)), all(vec3<bool>(true, true, true)), !all(vec2<bool>(true, true))));
    let var_1 = Struct_2(vec2<i32>(~(i32(-1i) * -u_input.a), 12659i), Struct_1(u_input.b.x, vec2<f32>(544f, global3.d.x), vec4<u32>(~global3.c.x, 78903u, ~_wgslsmith_mod_u32(u_input.b.x, 0u), ~(u_input.c & u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(min(-479f, -286f)), global3.b.x)), Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(124f, -1882f) - global3.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1217f, 2077f) * vec2<f32>(1000f, 213f))), vec2<f32>(global3.d.x, _wgslsmith_div_f32(219f, 962f)), var_0)), select(vec4<u32>(u_input.b.x, 28799u, 1u, 74493u) | ~u_input.b, u_input.b, !(!vec4<bool>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_vec2_f32(global3.b + _wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<f32>(global3.d.x, global3.d.x), Struct_1(4294967295u, vec2<f32>(global3.d.x, 529f), global3.c, global3.b), var_0, Struct_1(global3.a, vec2<f32>(-786f, -1489f), u_input.b, vec2<f32>(153f, 1625f))), vec3<f32>(global3.d.x, 1004f, -1714f), Struct_2(vec2<i32>(u_input.a, u_input.a), Struct_1(u_input.b.x, global3.d, vec4<u32>(global3.c.x, 87133u, 1u, u_input.b.x), global3.b), Struct_1(u_input.b.x, vec2<f32>(-949f, global3.b.x), vec4<u32>(u_input.c, 25507u, global3.a, 0u), global3.d), vec4<f32>(global3.d.x, global3.b.x, 835f, global3.d.x)))))), vec4<f32>(global3.d.x, global3.b.x, 729f, global3.d.x));
    global3 = Struct_1(~(~var_1.b.a), global3.d, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global3.c.x, 32086u, u_input.c, u_input.c) >> (vec4<u32>(1u, u_input.c, var_1.b.a, 42843u) % vec4<u32>(32u))), u_input.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.d))))));
    global2 = array<vec3<bool>, 1>();
    var var_2 = Struct_1(min(var_1.b.c.x, _wgslsmith_mult_u32(~firstTrailingBit(12241u), 1u)), global3.d, ~(countOneBits(abs(global3.c)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.c.c.x, global3.c.x, u_input.c), firstTrailingBit(vec4<u32>(u_input.c, global3.c.x, var_1.c.a, 1u))) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1114f + global3.d.x) * _wgslsmith_f_op_f32(global3.b.x + 1510f)) - _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -486f)))))));
    return Struct_5(!all(!select(vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, var_0, var_0, var_0), false)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = Struct_2(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-19381i, u_input.a, u_input.a, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-17695i, 30538i, u_input.a, -2147483647i), vec4<i32>(arg_2.x, arg_2.x, u_input.a, arg_2.x))), _wgslsmith_mult_i32(0i, -27408i)), Struct_1(abs(_wgslsmith_dot_vec2_u32(global3.c.yy, vec2<u32>(u_input.b.x, 0u))) << (24599u % 32u), _wgslsmith_f_op_vec2_f32(-global3.b), global3.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -584f) - arg_0)))), Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, global3.d.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + global3.d))), _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.b ^ vec4<u32>(u_input.c, 1u, global3.a, 4294967295u)), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, global3.d.x)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(arg_0)), _wgslsmith_f_op_vec2_f32(exp2(arg_0)), any(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, 531f, global3.d.x, -778f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, -1000f, arg_0.x, -353f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, -699f, 1578f, global3.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1617f, -621f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.d.x, arg_0.x, arg_0.x, global3.d.x))))))));
    global0 = array<vec3<bool>, 8>();
    let var_1 = var_0.b;
    var var_2 = 1i;
    let var_3 = arg_3;
    return Struct_4(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, select(u_input.b.xy, vec2<u32>(1u, 0u), select(true, false, true))), 8u)], select(select(vec3<bool>(arg_3, arg_1.a, true), select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(false, false, arg_3), false), global0[_wgslsmith_index_u32(~9771u, 8u)]), select(vec3<bool>(var_3, false, var_3), vec3<bool>(true, arg_1.a, arg_1.a), any(vec2<bool>(var_3, arg_1.a))), global0[_wgslsmith_index_u32(countOneBits(global3.a), 8u)]), !select(global2[_wgslsmith_index_u32(min(36331u, 4294967295u), 1u)], vec3<bool>(true, true, true), vec3<bool>(false, true, arg_1.a))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_5) -> vec4<i32> {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), 900f)), func_2(), select(firstLeadingBit(select(~vec3<i32>(125414i, u_input.a, -1i), -vec3<i32>(1i, 52219i, -22239i), !global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), max(vec3<i32>(firstLeadingBit(arg_0), ~arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -11682i), vec2<i32>(arg_0, arg_0))), ~firstTrailingBit(vec3<i32>(-27819i, u_input.d, 1i))), global2[_wgslsmith_index_u32(15762u, 1u)]), select(arg_2.a, !all(select(vec4<bool>(false, arg_2.a, false, arg_2.a), vec4<bool>(false, false, false, arg_2.a), true)), arg_2.a));
    var var_1 = all(select(select(vec4<bool>(true, select(var_0.a.x, var_0.a.x, var_0.a.x), true, arg_2.a), !vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), arg_2.a), select(select(vec4<bool>(var_0.a.x, false, arg_2.a, arg_2.a), select(vec4<bool>(true, var_0.a.x, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.a.x, true, false)), !var_0.a.x), vec4<bool>(u_input.b.x >= 21142u, any(global0[_wgslsmith_index_u32(global3.c.x, 8u)]), false, -444f < global3.d.x), !(!vec4<bool>(true, arg_2.a, false, false))), !(!vec4<bool>(var_0.a.x, var_0.a.x, true, false))));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.d, -firstLeadingBit(arg_0) >> ((global3.a & _wgslsmith_clamp_u32(19465u, 24290u, 1u)) % 32u), arg_0), -vec3<i32>(u_input.d, -1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, 1i), ~vec2<i32>(0i, -1i))));
    let var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(10047u, min(global3.a, u_input.c)), select(countOneBits(abs(global3.c.zw)), global3.c.zy, var_0.a.x)) << (u_input.b.zw % vec2<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec2_f32(func_3(Struct_3(arg_1.zw, Struct_1(~(44496u ^ global3.a), _wgslsmith_f_op_vec2_f32(floor(arg_1.wy)), global3.c, global3.d), _wgslsmith_clamp_i32(-24105i, arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, -2147483647i), vec3<i32>(-4533i, 1i, 3125i))) < _wgslsmith_add_i32(reverseBits(1i), min(arg_0, arg_0)), Struct_1(1u, _wgslsmith_f_op_vec2_f32(global3.b - arg_1.zy), max(firstLeadingBit(vec4<u32>(u_input.c, var_3.x, 40229u, global3.c.x)), vec4<u32>(global3.a, 4294967295u, 4294967295u, 4294967295u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b - global3.b), _wgslsmith_f_op_vec2_f32(global3.d + arg_1.zx)))), arg_1.zyw, Struct_2(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(2271i, 0i), vec2<i32>(-25604i, -19722i))), Struct_1(select(u_input.c >> (0u % 32u), u_input.c, arg_2.a | true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.b.x, 779f), global3.d))), (vec4<u32>(u_input.c, u_input.b.x, 56690u, global3.c.x) >> (vec4<u32>(u_input.c, global3.c.x, global3.c.x, 4294967295u) % vec4<u32>(32u))) ^ global3.c, arg_1.zx), Struct_1(_wgslsmith_dot_vec2_u32(var_3, var_3), arg_1.zw, global3.c ^ global3.c, _wgslsmith_f_op_vec2_f32(-arg_1.zy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(global3.d.x, 1852f, -627f, arg_1.x))))))))).x;
    return vec4<i32>(-16544i, 2147483647i, u_input.a, _wgslsmith_add_i32(countOneBits(u_input.a | _wgslsmith_add_i32(u_input.d, -28796i)), -47310i));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_1(~4294967295u << (arg_0.x % 32u), _wgslsmith_f_op_vec2_f32(-global3.d), ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(78492u, 38943u, arg_0.x, global3.c.x), vec4<u32>(global3.c.x, 1u, 13504u, 1476u) | global3.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3.b)) + _wgslsmith_f_op_vec2_f32(-global3.d)));
    global1 = 920f;
    global1 = _wgslsmith_f_op_f32(ceil(767f));
    global3 = Struct_1(countOneBits(70880u), vec2<f32>(_wgslsmith_f_op_f32(-537f * global3.b.x), 185f), arg_0 | _wgslsmith_sub_vec4_u32(abs(_wgslsmith_add_vec4_u32(u_input.b, global3.c)), ~(~global3.c)), vec2<f32>(_wgslsmith_f_op_f32(floor(-1117f)), 941f));
    let var_1 = vec2<bool>(func_2().a, any(global2[_wgslsmith_index_u32(arg_0.x, 1u)]) || !(true & any(vec2<bool>(false, true))));
    return vec3<u32>(59296u, u_input.c, select(37754u, _wgslsmith_sub_u32(_wgslsmith_div_u32(4675u, 1u) << (0u % 32u), 4294967295u ^ ~arg_0.x), var_1.x));
}

fn func_6(arg_0: vec3<u32>, arg_1: f32) -> Struct_4 {
    let var_0 = Struct_5(false);
    global0 = array<vec3<bool>, 8>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, -165f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(round(global3.d.x)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global3.b.x, -1000f, -741f) - vec4<f32>(global3.d.x, 351f, global3.b.x, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 131f, 1000f, global3.d.x)))))));
    var var_2 = true;
    global0 = array<vec3<bool>, 8>();
    return func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, -1347f))))), Struct_5(any(!select(global0[_wgslsmith_index_u32(global3.a, 8u)], vec3<bool>(false, var_0.a, false), var_0.a))), vec3<i32>(max(u_input.d, min(31007i, -2547i)), u_input.a, 10017i), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(u_input.b & global3.c, ~(func_1(u_input.a, vec4<f32>(global3.b.x, global3.b.x, global3.d.x, global3.d.x), Struct_5(true)) >> ((u_input.b >> (vec4<u32>(4294967295u, 2410u, 4294967295u, global3.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global3.b.x)), global3.b.x, all(vec2<bool>(true, false))))));
    var var_1 = !select(func_6(abs(vec3<u32>(24629u, 1u, global3.a) << (global3.c.xxy % vec3<u32>(32u))), global3.b.x).a.xx, !func_6(global3.c.xyw, _wgslsmith_div_f32(2375f, -1000f)).a.xy, vec2<bool>(true && !var_0.a.x, false));
    global2 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 8>();
    var var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, countOneBits(-u_input.d), countOneBits(-4427i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, 28188i, 12035i)), vec4<i32>(7181i, u_input.d, 15660i, u_input.d))) | ~firstLeadingBit(vec4<i32>(u_input.a, 17535i, 0i, u_input.a) ^ vec4<i32>(0i, 1i, u_input.a, 12227i)), min(global3.a, 15894u), u_input.d, 2147483647i, ~func_5(global3.c, ~vec4<i32>(u_input.d, -2147483647i, 1i, 2147483647i) | vec4<i32>(0i, 45194i, 21540i, -17982i)).x);
}

