struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-1000f, -1148f, 1000f, -403f), vec4<f32>(-806f, -454f, -1000f, -373f), vec4<f32>(-1022f, -917f, -297f, -448f), vec4<f32>(-1396f, 223f, -1600f, 759f), vec4<f32>(1261f, 506f, 894f, -317f), vec4<f32>(-1018f, 1363f, 1471f, -214f), vec4<f32>(566f, -1250f, -457f, -833f), vec4<f32>(-273f, -1162f, -380f, -221f), vec4<f32>(-267f, 1196f, -677f, -390f), vec4<f32>(1067f, -381f, 508f, 554f), vec4<f32>(-841f, 899f, -570f, 957f), vec4<f32>(-564f, 1064f, 763f, -1000f), vec4<f32>(-1120f, -732f, -525f, -582f), vec4<f32>(1000f, -775f, 1633f, 1593f), vec4<f32>(-279f, 300f, -360f, -1362f), vec4<f32>(887f, -709f, 1058f, -1868f));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1844f, -329f), -1i);

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<u32> {
    global2 = global1.b;
    global2 = countOneBits(firstLeadingBit(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.b.x, 1i))));
    global2 = _wgslsmith_mod_i32(-abs(min(reverseBits(u_input.d), ~1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.d | global1.b, ~(~(-20624i)), ~u_input.c, _wgslsmith_mod_i32(_wgslsmith_div_i32(global1.b, global1.b), abs(-2147483647i))), vec4<i32>(-11884i, -2147483647i, global1.b >> ((4294967295u >> (u_input.e % 32u)) % 32u), (-33724i | u_input.c) >> (1u % 32u))));
    global2 = reverseBits(_wgslsmith_dot_vec4_i32(u_input.a | -vec4<i32>(u_input.d, global1.b, -1i, 24198i), u_input.a)) >> (~0u % 32u);
    global2 = _wgslsmith_mod_i32(max(u_input.d ^ ~(-u_input.d), u_input.a.x), u_input.b.x);
    return _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.e, 0u, u_input.e)), ~vec3<u32>(u_input.e, 23746u, 82011u)) << (4294967295u % 32u), max(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.e, 0u, u_input.e), vec4<u32>(61618u, 38428u, u_input.e, 4294967295u))), 36470u), ~(~vec3<u32>(u_input.e, countOneBits(u_input.e), u_input.e)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = ~u_input.a.yx;
    global0 = array<vec4<f32>, 16>();
    let var_1 = vec4<u32>(1u, _wgslsmith_dot_vec3_u32(select(func_3(), vec3<u32>(0u, u_input.e, ~0u), vec3<bool>(true, true, true)), abs(vec3<u32>(arg_1, 0u, 13243u) >> (~vec3<u32>(1u, u_input.e, arg_1) % vec3<u32>(32u)))), 9407u, func_3().x << (~arg_1 % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global1.a)), _wgslsmith_sub_i32(firstLeadingBit(global1.b), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(var_0, vec2<i32>(26701i, 46628i)), -vec2<i32>(u_input.a.x, 0i)), -var_0)));
    let var_3 = -37704i;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = func_2(reverseBits(vec2<u32>(~1u, 4294967295u)), _wgslsmith_clamp_u32(~u_input.e, ~max(51668u, ~0u), 52187u));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(748f, arg_2))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1273f, global1.a.x) * arg_1.a))))), -48906i);
    var var_0 = func_2(abs(_wgslsmith_add_vec2_u32(vec2<u32>(37720u, u_input.e) << (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(7633u, 3252u))) & (vec2<u32>(4294967295u, 4294967295u) & ~vec2<u32>(u_input.e, u_input.e))), min(~u_input.e, u_input.e));
    let var_1 = u_input.e;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.a))), _wgslsmith_div_i32(~_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_3.b, global1.b), arg_1.b), u_input.b.x));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(192f * arg_0.a.x) + 127f), func_2(~vec2<u32>(1u, u_input.e) << ((vec2<u32>(var_1, 0u) >> (vec2<u32>(var_1, var_1) % vec2<u32>(32u))) % vec2<u32>(32u)), ~_wgslsmith_mod_u32(u_input.e, 4294967295u)).a.x), min(_wgslsmith_dot_vec3_i32(u_input.a.xyz, u_input.a.xyw), arg_0.b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(global1.a))))), -_wgslsmith_sub_i32(global1.b, 0i)), func_2(~(~select(vec2<u32>(5443u, 79645u), vec2<u32>(27795u, u_input.e), vec2<bool>(true, true))), 27806u), arg_1.a.x, arg_1);
    var_0 = arg_1;
    global2 = ~(~firstLeadingBit(0i));
    let var_1 = _wgslsmith_f_op_f32(min(-893f, arg_1.a.x));
    global0 = array<vec4<f32>, 16>();
    return _wgslsmith_mult_u32(u_input.e, u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~min(_wgslsmith_clamp_u32(0u, 50547u, u_input.e), u_input.e), firstLeadingBit(1u)), vec2<u32>(_wgslsmith_sub_u32(u_input.e, func_1(Struct_1(global1.a, u_input.d), Struct_1(global1.a, global1.b))), ~(~19081u >> (func_3().x % 32u))));
    global2 = 10684i >> (~(~u_input.e) % 32u);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(vec2<u32>(291u, u_input.e), 0u).a.x, _wgslsmith_f_op_f32(782f - _wgslsmith_f_op_f32(-global1.a.x)), 328f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, -1330f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, global1.a.x, global1.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1286f, -302f, -237f))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), all(vec3<bool>(false, false, true))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(565f, global1.a.x, global1.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, global1.a.x) - vec3<f32>(global1.a.x, global1.a.x, global1.a.x)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + -268f))), _wgslsmith_f_op_f32(-650f + func_2(vec2<u32>(u_input.e, 1u) >> (vec2<u32>(var_0.x, 44098u) % vec2<u32>(32u)), 1u).a.x)) + _wgslsmith_f_op_vec2_f32(var_1.zy * vec2<f32>(-1726f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-838f, 966f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1263f)), var_1.x, true)), var_2.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_2.x)), _wgslsmith_f_op_vec2_f32(-var_1.xy)))), ~u_input.a.x);
    var var_4 = firstLeadingBit(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(3503u, 57571u, u_input.e), vec3<u32>(45283u, var_0.x, var_0.x)), 1u, countOneBits(~var_0.x), ~u_input.e)) << (~(~(~min(vec4<u32>(4294967295u, 102239u, var_0.x, var_0.x), vec4<u32>(19219u, 12606u, 47734u, var_0.x)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(global1.a, func_4(func_2(countOneBits(vec2<u32>(u_input.e, u_input.e)), u_input.e), Struct_1(_wgslsmith_f_op_vec2_f32(-var_3.a), global1.b), var_3.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 877f)), var_3.b)).a), vec2<u32>(reverseBits(1u), ~4294967295u), ~(~(u_input.e | 4848u) << (~u_input.e % 32u)));
}

