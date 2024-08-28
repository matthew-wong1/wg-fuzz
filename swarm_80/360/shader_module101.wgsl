struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-18551i, 14826i, i32(-2147483648), -78715i, i32(-2147483648), -18761i, 11181i, 28495i, 2147483647i, 6989i, 0i, 1i, 33625i, -19818i, -21458i, i32(-2147483648), 30604i, -1i, -26905i, 61148i, 58344i);

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 21>;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec3<bool>(false, true, false), vec3<f32>(2242f, -1635f, 834f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(527f, 697f, 250f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(-1597f, 218f, 1178f)), Struct_3(vec3<bool>(true, false, true), vec3<f32>(336f, -224f, 352f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(460f, 1208f, 1000f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(1000f, 1000f, -1878f)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(-517f, 952f, -137f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(737f, -1463f, -832f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-1470f, 1600f, 739f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(-275f, 1000f, -507f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(-313f, -355f, 273f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(-464f, 1027f, -218f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-1792f, -2342f, 699f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(1737f, 1789f, 1899f)), Struct_3(vec3<bool>(true, false, true), vec3<f32>(-1942f, -188f, 172f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(-639f, 722f, -161f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(1095f, 1837f, -618f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(-104f, 250f, -1234f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(650f, 817f, -2073f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(-954f, 238f, -1029f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(1407f, -134f, 604f)), Struct_3(vec3<bool>(true, false, true), vec3<f32>(1053f, 1443f, 1164f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-643f, 1559f, 982f)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> bool {
    var var_0 = vec3<u32>(~_wgslsmith_mult_u32(1u, countOneBits(abs(0u))), ~(~arg_1) >> ((_wgslsmith_sub_u32(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(45567u, 17312u), vec2<u32>(6605u, 4294967295u))) ^ abs(_wgslsmith_clamp_u32(arg_1, arg_1, 49361u))) % 32u), 22734u);
    let var_1 = !all(vec3<bool>(global1.a.x, true, global3.x & global3.x));
    global0 = array<i32, 21>();
    global3 = !(!select(!(!vec3<bool>(global3.x, true, var_1)), global1.a, true));
    var var_2 = global2[_wgslsmith_index_u32(1u, 21u)];
    return global1.c.b.x;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = 0u;
    let var_2 = global2[_wgslsmith_index_u32(~0u, 21u)];
    global4 = array<Struct_3, 23>();
    global1 = Struct_2(!(!vec3<bool>(230f < global1.b, func_3(vec4<f32>(1441f, 328f, 906f, -1487f), 4294967295u), any(global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x))) * _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(483f, global1.b), global1.b)), true))), global1.c);
    return global4[_wgslsmith_index_u32(firstTrailingBit(abs(1u)) << (abs(8684u) % 32u), 23u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    let var_0 = arg_1.b.yx;
    let var_1 = Struct_4(!select(global3.xy, arg_1.a.yy, true));
    var var_2 = Struct_2(!(!func_2(global4[_wgslsmith_index_u32(4294967295u, 23u)]).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-371f)) * _wgslsmith_f_op_f32(sign(global1.b)))))), Struct_1(true, !select(!global1.c.b, vec2<bool>(var_1.a.x, arg_1.a.x), func_2(arg_1).a.xz)));
    global2 = array<Struct_4, 21>();
    global2 = array<Struct_4, 21>();
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: u32) -> Struct_1 {
    global1 = Struct_2(global1.a, 310f, global1.c);
    let var_0 = func_4(vec4<u32>(~1u, ~reverseBits(~20044u), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_3, arg_1), arg_3), 1u), func_2(Struct_3(vec3<bool>(!arg_0.a, true, true), vec3<f32>(_wgslsmith_f_op_f32(-103f * arg_2), -157f, arg_2))), 1u);
    global0 = array<i32, 21>();
    var var_1 = Struct_4(global1.c.b);
    var var_2 = arg_0.b;
    return arg_0;
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    var var_0 = Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), Struct_1(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(766f, 273f, -399f, global1.b), vec4<f32>(global1.b, global1.b, -862f, arg_0.b))) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.b, -427f, 1000f, arg_0.b), vec4<f32>(arg_0.b, 172f, global1.b, 1002f))), 4294967295u), vec2<bool>(func_3(vec4<f32>(244f, 2157f, 1150f, -102f), 96035u), arg_0.c.b.x)));
    let var_1 = func_1(var_0.c, 9121u, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(abs(4294967295u), ~55602u, 9131u, 0u), ~_wgslsmith_div_vec4_u32(vec4<u32>(44886u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = Struct_4(func_4(~select(~vec4<u32>(70946u, 4294967295u, 1u, 84457u), reverseBits(vec4<u32>(4294967295u, 66782u, 45543u, 0u)), global0[_wgslsmith_index_u32(1u, 21u)] <= u_input.b), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28798u >> (0u % 32u), abs(_wgslsmith_sub_u32(1u, 0u)), min(~4294967295u, _wgslsmith_mod_u32(40686u, 64922u))), 23u)], ~4294967295u).a.yy);
    let var_3 = ~vec4<i32>(-20930i, 18522i, max(global0[_wgslsmith_index_u32(~(~30842u), 21u)], u_input.d), u_input.a);
    var var_4 = ~1i;
    return Struct_5(func_1(Struct_1(false, !func_2(global4[_wgslsmith_index_u32(37516u, 23u)]).a.yy), _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(34710u, 25012u, 5823u, 0u), vec4<u32>(3754u, 4294967295u, 5140u, 72276u)), ~vec4<u32>(4294967295u, 21870u, 12155u, 46690u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f * -197f)) - _wgslsmith_f_op_f32(-arg_0.b)), 1u), Struct_4(vec2<bool>(true, true)), func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), var_0.b, global1.b, global1.b), 14856u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(floor(global1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, global1.b)) * _wgslsmith_f_op_vec2_f32(-func_4(vec4<u32>(74475u, 34511u, 26272u, 4294967295u), global4[_wgslsmith_index_u32(34402u, 23u)], 13195u).b.yx)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 23>();
    let var_0 = func_5(Struct_2(global1.a, _wgslsmith_div_f32(-259f, global1.b), func_1(Struct_1(global3.x, vec2<bool>(true, true)), ~(~35733u), 543f, _wgslsmith_add_u32(35240u, min(0u, 84679u)))));
    let var_1 = 210f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(vec4<i32>(global0[_wgslsmith_index_u32(9754u, 21u)], global0[_wgslsmith_index_u32(6447u, 21u)], global0[_wgslsmith_index_u32(12865u, 21u)], -33170i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(54803u, 5879u, 0u, 4294967295u), vec4<u32>(1u, 0u, 0u, 17582u), vec4<u32>(4294967295u, 4294967295u, 13422u, 0u)) % vec4<u32>(32u))), -6251i);
}

