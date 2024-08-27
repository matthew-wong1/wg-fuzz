struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(1u, 1u, 4294967295u, 1u, 19853u, 0u, 89742u, 1u, 31801u, 22349u, 60948u, 4294967295u, 55910u);

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_2, 4>;

var<private> global3: array<vec3<bool>, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-896f, -466f, global1.x) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(915f, global1.x, -853f), vec3<f32>(global1.x, 378f, global1.x), true)))))));
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(884f, global1.x, 951f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-632f, global1.x, -578f) + vec3<f32>(892f, global1.x, -746f))))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global0[_wgslsmith_index_u32(~select(_wgslsmith_add_u32(u_input.b << (4294967295u % 32u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], u_input.c)), 0u, true), 13u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, global1.x, global1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1046f, 1287f, -901f))))));
    let var_1 = Struct_3(max(firstLeadingBit(-abs(vec4<i32>(-1i, u_input.d, -24977i, u_input.a))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(42970i, u_input.a, 8311i), vec3<i32>(18786i, u_input.a, u_input.a)), 3273i), _wgslsmith_add_i32(0i ^ u_input.a, 1i), u_input.d, u_input.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(~19210u, var_0.c), ~(~vec2<u32>(10199u, u_input.b))) & vec2<u32>(4294967295u, abs(~1u)), var_0.b, var_0.b);
    var var_2 = Struct_3(_wgslsmith_mult_vec4_i32(abs(var_1.a), var_1.a << (abs(vec4<u32>(1u, 12804u, 103277u, 37506u)) % vec4<u32>(32u))), vec2<u32>(var_1.b.x & _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(84339u, 13u)], global0[_wgslsmith_index_u32(~var_1.b.x, 13u)]), u_input.b), Struct_1(var_1.c.a), var_1.d);
    var_2 = Struct_3(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(var_2.a >> (vec4<u32>(23027u, var_1.b.x, 132276u, var_1.b.x) % vec4<u32>(32u)), vec4<i32>(var_1.a.x, 0i, -2147483647i, 39746i)), _wgslsmith_mult_vec2_u32(var_2.b, vec2<u32>(17166u | global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(0u, 13u)])), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))), -1680f)), var_2.c);
    return _wgslsmith_dot_vec2_i32(var_2.a.yy, firstTrailingBit(select((var_2.a.ww >> (var_2.b % vec2<u32>(32u))) << (~vec2<u32>(4294967295u, 36093u) % vec2<u32>(32u)), ~vec2<i32>(var_1.a.x, -1i), false)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(884f, arg_0.d.a.x, -311f) + vec3<f32>(-678f, global1.x, -924f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -219f, -1330f) + vec3<f32>(823f, 537f, 1234f))) * vec3<f32>(_wgslsmith_f_op_f32(2056f - global1.x), _wgslsmith_f_op_f32(341f - -1610f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global3 = array<vec3<bool>, 15>();
    global0 = array<u32, 13>();
    let var_1 = max(vec2<i32>(func_3(), reverseBits(firstTrailingBit(arg_1.x))) << (min(_wgslsmith_mod_vec2_u32(arg_0.b, vec2<u32>(1u, 27556u)) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), vec2<u32>(u_input.b, arg_0.b.x)) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(arg_1.zz, arg_0.a.wy));
    var var_2 = -reverseBits(vec2<i32>(~var_1.x, ~(-1i)));
    return Struct_2(arg_0.d, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_0.yz, vec2<f32>(-349f, -192f))), _wgslsmith_f_op_vec2_f32(global1.zz * vec2<f32>(arg_0.c.a.x, var_0.x)))))), arg_0.d, _wgslsmith_dot_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x >> (72988u % 32u), -1i, i32(-1i) * -18998i, 19247i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(50827u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 0u, arg_0.b.x) & vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 4294967295u, 4294967295u), ~vec4<u32>(20254u, 0u, 1u, 41056u)) % vec4<u32>(32u))), (all(vec4<bool>(true, false, false, true)) | true) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) == var_0.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    global3 = array<vec3<bool>, 15>();
    var var_0 = select(arg_1.e, arg_1.e && true, !arg_1.e);
    global2 = array<Struct_2, 4>();
    let var_1 = global3[_wgslsmith_index_u32(0u, 15u)];
    var var_2 = Struct_4(vec3<f32>(-1805f, _wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(956f)) - 187f)), arg_1.a, _wgslsmith_div_u32(select(~118081u, abs(0u), arg_1.b.a.x < arg_0), ~u_input.b), vec3<f32>(628f, arg_1.b.a.x, _wgslsmith_f_op_f32(sign(arg_0))));
    return all(!vec4<bool>(!all(vec3<bool>(var_1.x, true, arg_1.e)), var_1.x, false, true));
}

fn func_1() -> f32 {
    global0 = array<u32, 13>();
    let var_0 = global0[_wgslsmith_index_u32(~1u, 13u)];
    let var_1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(301f, global1.x, func_4(_wgslsmith_f_op_f32(-313f - 955f), func_2(Struct_3(vec4<i32>(u_input.a, -25479i, 2147483647i, u_input.a), vec2<u32>(u_input.c, 92914u), Struct_1(vec2<f32>(global1.x, -963f)), Struct_1(global1.zz)), vec3<i32>(u_input.a, -1i, u_input.d))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-554f))))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1830f)))));
    global2 = array<Struct_2, 4>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.zyy))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1000f))));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1352f * global1.x))))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(1u ^ ~(58465u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)] % 32u))), u_input.b), 4u)];
    return Struct_1(arg_3.zz);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = max(-14171i & ~arg_1.x, -2147483647i) << (4294967295u % 32u);
    global3 = array<vec3<bool>, 15>();
    global0 = array<u32, 13>();
    let var_1 = abs(abs(select(arg_1, _wgslsmith_sub_vec3_i32(arg_3.a.zzz >> (vec3<u32>(global0[_wgslsmith_index_u32(arg_0.c, 13u)], u_input.b, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, 16997i, 19406i)), select(arg_2, vec3<bool>(arg_2.x, arg_2.x, false), 21522i != u_input.d))));
    return StorageBuffer(_wgslsmith_f_op_f32(step(func_5(global1.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(76783u, 1u, global0[_wgslsmith_index_u32(4294967295u, 13u)]), ~vec3<u32>(9214u, arg_0.c, 36323u)), 15u)], arg_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(452f, global1.x, global1.x, global1.x) + vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.a.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -169f, 1035f, 859f) - vec4<f32>(global1.x, -955f, -1000f, 1000f)))).a.x, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(global1.x * arg_3.c.a.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.a.x), _wgslsmith_f_op_f32(-501f + -191f))), _wgslsmith_f_op_f32(select(-413f, arg_0.b.a.x, !(arg_3.b.x == 1u))))), vec4<u32>(87731u, reverseBits(global0[_wgslsmith_index_u32(~11168u, 13u)]) & 0u, arg_3.b.x, 1u & min(u_input.c, ~u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(2074f, _wgslsmith_f_op_f32(global1.x - -728f), global1.x);
    global3 = array<vec3<bool>, 15>();
    global0 = array<u32, 13>();
    let var_1 = firstTrailingBit(~_wgslsmith_mult_u32(32214u, global0[_wgslsmith_index_u32(u_input.b, 13u)])) | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~(~3702u)) >> (_wgslsmith_sub_u32(4294967295u, firstTrailingBit(_wgslsmith_mult_u32(63643u, u_input.c))) % 32u), 13u)], 13u)];
    var var_2 = global2[_wgslsmith_index_u32(1u, 4u)];
    let x = u_input.a;
    s_output = func_6(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 344f, var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-749f)), 165f, global1.x)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(func_1())), select(vec3<bool>(true, var_2.e, false), global3[_wgslsmith_index_u32(u_input.b, 15u)], true), !(!var_2.e), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1125f, var_2.b.a.x, var_2.b.a.x))))), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(select(59507u, 4294967295u, false)), 13u)], 13u)], _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 4294967295u, var_1, 25395u)), _wgslsmith_div_vec4_u32(vec4<u32>(19216u, 58317u, 11081u, u_input.c), vec4<u32>(u_input.b, 4294967295u, var_1, var_1)))), _wgslsmith_div_vec3_f32(vec3<f32>(-103f, global1.x, _wgslsmith_f_op_f32(round(-1393f))), vec3<f32>(_wgslsmith_f_op_f32(step(-520f, global1.x)), _wgslsmith_f_op_f32(-var_2.c.a.x), _wgslsmith_f_op_f32(abs(var_2.a.a.x))))), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.d << (firstTrailingBit(20897u) % 32u), 50410i, ~min(var_2.d, u_input.d)), _wgslsmith_mult_vec3_i32(firstTrailingBit(min(vec3<i32>(1i, 5380i, var_2.d), vec3<i32>(var_2.d, u_input.a, 25408i))), vec3<i32>(8288i, abs(-2147483647i), ~var_2.d))), vec3<bool>(var_2.e, true, !(_wgslsmith_f_op_f32(var_0.x + -674f) > 1000f)), Struct_3(vec4<i32>(-1i, var_2.d, ~firstLeadingBit(-44561i), 0i), ~(vec2<u32>(4294967295u, 27025u) | select(vec2<u32>(var_1, var_1), vec2<u32>(8988u, 4294967295u), vec2<bool>(var_2.e, var_2.e))), func_2(Struct_3(vec4<i32>(var_2.d, 1i, 1i, var_2.d), ~vec2<u32>(u_input.b, 0u), func_5(-726f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4193u, 13u)], 15u)], var_2.e, vec4<f32>(var_2.a.a.x, global1.x, -1667f, 355f)), func_2(Struct_3(vec4<i32>(31075i, 1163i, u_input.d, u_input.d), vec2<u32>(var_1, u_input.c), Struct_1(vec2<f32>(-198f, global1.x)), Struct_1(vec2<f32>(972f, var_2.b.a.x))), vec3<i32>(-2147483647i, 17972i, 5355i)).a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.d), vec3<i32>(13865i, -12311i, 5565i)) | vec3<i32>(var_2.d, 0i, 1i)).c, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(463f, global1.x), vec2<f32>(var_2.a.a.x, 980f), var_2.e)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1555f, var_0.x)))))));
}

