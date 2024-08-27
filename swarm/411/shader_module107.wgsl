struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: array<Struct_3, 8>;

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(110f, -631f, 1782f, 930f), vec4<f32>(881f, 2101f, 1000f, -345f), vec4<f32>(-1252f, -555f, -249f, 1502f), vec4<f32>(1351f, 557f, 2011f, 1418f), vec4<f32>(218f, -166f, -106f, 1466f), vec4<f32>(426f, -147f, -504f, 146f), vec4<f32>(420f, -105f, -393f, -268f), vec4<f32>(-225f, 204f, 787f, 2490f), vec4<f32>(-2839f, 1000f, 176f, -1022f), vec4<f32>(996f, -362f, 986f, -174f), vec4<f32>(-1447f, 666f, -724f, -895f), vec4<f32>(-1290f, -1127f, -363f, -651f), vec4<f32>(-244f, 1631f, 1559f, -756f), vec4<f32>(743f, -976f, 1572f, -1464f), vec4<f32>(125f, -799f, 582f, 1072f), vec4<f32>(-379f, 882f, -965f, 921f), vec4<f32>(-237f, -1109f, 1277f, -210f), vec4<f32>(1255f, 100f, -885f, 2085f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(2285f * _wgslsmith_f_op_f32(ceil(1f))), -543f);
    let var_1 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(false, 1u < u_input.b.x, all(vec2<bool>(false, true)), true), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), u_input.b.x <= 1u)));
    var var_2 = u_input.d.zz;
    let var_3 = ~_wgslsmith_add_u32(_wgslsmith_sub_u32(min(max(u_input.b.x, 8750u), 0u), reverseBits(~u_input.b.x)), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1589u, u_input.b.x, 8086u), ~vec4<u32>(u_input.b.x, 21740u, 1u, u_input.b.x))));
    var var_4 = u_input.d.x;
    return ~_wgslsmith_add_u32(var_3 | var_3, reverseBits(0u));
}

fn func_2() -> u32 {
    global0 = array<vec4<u32>, 29>();
    let var_0 = any(vec2<bool>((~0u < func_3(348f)) == all(vec3<bool>(false, false, true)), !(-18992i <= (u_input.a & 13347i))));
    var var_1 = Struct_3(var_0, i32(-1i) * -1i);
    global2 = array<vec4<f32>, 18>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(trunc(817f))) + _wgslsmith_f_op_f32(min(518f, _wgslsmith_f_op_f32(step(-1020f, 497f))))) >= _wgslsmith_f_op_f32(ceil(-830f)), -698i);
    return select(_wgslsmith_sub_u32(~4294967295u, abs(u_input.b.x)), _wgslsmith_sub_u32(~5135u, u_input.b.x), false);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<u32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1094f) * _wgslsmith_f_op_f32(min(-518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1336f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 2770f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_div_f32(116f, -166f)))));
    var_0 = -1052f;
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-502f, -760f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2118f, 1122f) + vec2<f32>(-709f, -1073f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-241f, -1765f), vec2<f32>(422f, 1057f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -957f), -1338f))), vec3<u32>(arg_3.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, 11865u), u_input.b), arg_3.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~arg_3.x)), 1i);
    var var_2 = false;
    return Struct_1(!select(!vec4<bool>(true, true, true, arg_2.a), !select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2.a, false, arg_2.a, true), arg_2.a), (-230f >= var_1.a.x) && all(vec3<bool>(arg_0.a, arg_2.a, true))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 26723u, 0u) & _wgslsmith_div_vec3_u32(arg_3.xyy, arg_3.wyw)), vec3<u32>(109913u, u_input.b.x, abs(var_1.b.x))), !select(vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_2.a, false, arg_0.a, arg_2.a)), vec4<bool>(true, true, any(vec4<bool>(arg_2.a, arg_2.a, arg_0.a, arg_1)), select(false, false, false))), max(u_input.e ^ u_input.e, vec3<i32>(firstTrailingBit(0i), -2949i, _wgslsmith_mult_i32(u_input.e.x, arg_2.b))) >> (~arg_3.zxy % vec3<u32>(32u)), global2[_wgslsmith_index_u32(56345u & _wgslsmith_mod_u32(var_1.b.x, var_1.b.x), 18u)]);
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(global1[_wgslsmith_index_u32(~0u ^ (1u | min(~68920u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)))), 8u)], false, global1[_wgslsmith_index_u32(min(1u, abs(0u)) | u_input.b.x, 8u)], ~global0[_wgslsmith_index_u32(func_2() ^ 4294967295u, 29u)]);
    let var_1 = vec2<u32>(~(((var_0.b & u_input.b.x) >> ((var_0.b & u_input.b.x) % 32u)) << ((68670u | ~u_input.b.x) % 32u)), (abs(~1884u) & ~(~var_0.b)) | u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.e + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, -654f, var_0.e.x, 792f) * _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(0u, 18u)] - vec4<f32>(var_0.e.x, var_0.e.x, 664f, -934f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(trunc(var_0.e.x)), -144f, _wgslsmith_f_op_f32(-var_0.e.x)))))));
    var_0 = func_4(global1[_wgslsmith_index_u32(select(select(~u_input.b.x, func_3(_wgslsmith_f_op_f32(601f * 1000f)), ~6029u >= abs(var_0.b)), 40038u, var_0.c.x), 8u)], -529f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(-var_0.e.x)))), Struct_3(true, -14240i), ~vec4<u32>(firstTrailingBit(max(u_input.b.x, 17114u)), ~4294967295u, _wgslsmith_add_u32(var_1.x, 0u), ~(~0u)));
    let var_3 = any(select(var_0.a, select(vec4<bool>(any(vec3<bool>(var_0.c.x, false, false)), true, var_0.a.x == var_0.c.x, var_0.a.x), var_0.a, !any(vec2<bool>(false, false))), vec4<bool>(select(19815u > u_input.b.x, all(vec4<bool>(true, true, var_0.a.x, true)), all(var_0.c)), var_0.a.x, var_0.a.x, !var_0.c.x)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_2.yz, vec2<f32>(-397f, _wgslsmith_f_op_f32(273f + 215f)))), _wgslsmith_f_op_vec2_f32(sign(var_2.zx)), true)), vec3<u32>(~min(u_input.b.x, var_0.b), 4294967295u, select(1u, _wgslsmith_mod_u32(12777u, u_input.b.x), false)) << (~(~vec3<u32>(var_1.x, 1u, 1u) << (max(vec3<u32>(var_1.x, u_input.b.x, var_0.b), vec3<u32>(var_1.x, var_0.b, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), 38774i);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = arg_3;
    global2 = array<vec4<f32>, 18>();
    let var_1 = func_4(Struct_3(all(vec3<bool>(arg_1.a != arg_1.a, true, all(vec2<bool>(false, true)))), arg_2.x), _wgslsmith_sub_u32(select(u_input.b.x, var_0.b.x & 0u, arg_1.a), u_input.b.x >> (var_0.b.x % 32u)) > 4294967295u, Struct_3(func_4(arg_1, arg_1.a, global1[_wgslsmith_index_u32(func_4(arg_1, !arg_1.a, arg_1, global0[_wgslsmith_index_u32(44291u, 29u)]).b, 8u)], global0[_wgslsmith_index_u32(var_0.b.x, 29u)]).a.x, i32(-1i) * -34297i), ~(select(~global0[_wgslsmith_index_u32(42626u, 29u)], select(vec4<u32>(u_input.b.x, 1u, var_0.b.x, 70625u), vec4<u32>(arg_3.b.x, var_0.b.x, 52143u, 1u), vec4<bool>(arg_1.a, arg_1.a, false, false)), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a)) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, arg_3.b.x, 1u, 0u), vec4<u32>(18061u, 0u, 53996u, 0u)), countOneBits(17505u), u_input.b.x, firstTrailingBit(var_0.b.x))));
    let var_2 = firstTrailingBit(min(-(~(-vec2<i32>(var_0.c, var_1.d.x))), u_input.d.xx));
    let var_3 = arg_1;
    return ~vec3<u32>(var_1.b, 23907u, u_input.b.x);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = firstTrailingBit(~func_4(global1[_wgslsmith_index_u32(arg_2 >> ((arg_3 << (arg_3 % 32u)) % 32u), 8u)], true, Struct_3(0u >= arg_3, ~(-4171i)), vec4<u32>(countOneBits(63325u), func_3(602f), ~73005u, 37433u)).d.zy);
    let var_1 = Struct_1(!vec4<bool>(!(arg_0.a || arg_0.a), all(vec3<bool>(true, false, arg_1.x)), all(!vec3<bool>(arg_0.a, arg_1.x, arg_0.a)), arg_1.x), firstLeadingBit(~arg_2 | _wgslsmith_add_u32(arg_3, func_3(-579f))), select(!func_4(arg_0, arg_0.b != -2147483647i, Struct_3(arg_0.a, 0i), abs(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 60449u))).a, select(select(func_4(global1[_wgslsmith_index_u32(1u, 8u)], false, Struct_3(false, u_input.d.x), vec4<u32>(4294967295u, 63812u, 46297u, arg_3)).a, !vec4<bool>(false, arg_0.a, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), func_4(arg_0, arg_1.x, Struct_3(false, 57929i), global0[_wgslsmith_index_u32(0u, 29u)]).c, !(arg_1.x & false)), all(select(vec4<bool>(arg_1.x, arg_1.x, arg_0.a, true), vec4<bool>(false, arg_1.x, arg_0.a, arg_0.a), select(vec4<bool>(arg_0.a, true, false, true), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), false)))), u_input.e, _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(u_input.b.x & 30876u), ~(arg_3 ^ 18485u), 1u), 18u)], _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 18u)]), !func_4(Struct_3(false, var_0.x), any(arg_1.zx), global1[_wgslsmith_index_u32(~arg_2, 8u)], firstLeadingBit(vec4<u32>(1u, u_input.b.x, arg_2, arg_3))).a)));
    global2 = array<vec4<f32>, 18>();
    let var_2 = func_1().b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.e.x)))), 422f));
    return arg_0;
}

fn func_7(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = 387f;
    global2 = array<vec4<f32>, 18>();
    let var_1 = ~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b.x, 13642u), vec3<u32>(1u, 4294967295u, 0u)) & ~vec3<u32>(u_input.b.x, 0u, 1u)) ^ vec3<u32>(u_input.b.x, func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1029f)), _wgslsmith_f_op_f32(sign(-596f))))), _wgslsmith_add_u32(max(u_input.b.x, ~5810u), u_input.b.x));
    global0 = array<vec4<u32>, 29>();
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(56999u, 29u)] ^ (global0[_wgslsmith_index_u32(29050u, 29u)] & global0[_wgslsmith_index_u32(var_1.x, 29u)]), ~vec4<u32>(u_input.b.x, 4294967295u, 72401u, 4294967295u)) & global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~var_1.x, 1u), _wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(70700u, 29u)], global0[_wgslsmith_index_u32(countOneBits(1u), 29u)])), 29u)], ~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 87128u, 33463u, u_input.b.x), ~global0[_wgslsmith_index_u32(63489u, 29u)])));
    return -(vec4<i32>(-arg_0.b, -22896i, u_input.a, u_input.c & -36900i) ^ max(vec4<i32>(~(-1476i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.b, -10731i, arg_0.b), vec4<i32>(arg_0.b, -2147483647i, -2147483647i, arg_0.b)), ~16525i, ~arg_0.b), abs(-vec4<i32>(u_input.a, arg_0.b, arg_0.b, -15285i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 18>();
    let var_0 = func_7(func_6(Struct_3(true, u_input.e.x), vec3<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), (1u >> (1u % 32u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(46605u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), true), _wgslsmith_dot_vec3_u32(max(firstTrailingBit(vec3<u32>(4294967295u, 13625u, u_input.b.x)), vec3<u32>(4294967295u, 64890u, 28361u) ^ vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -955f), Struct_3(false, -1i), u_input.e.yx, func_1())), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 10837u)) << (1u % 32u), 1u)));
    let var_1 = ~64518u;
    var var_2 = !func_4(func_6(Struct_3(true, var_0.x), vec3<bool>(true, true, true), ~10733u << (u_input.b.x % 32u), var_1), true, Struct_3(true, 1i), ~(~global0[_wgslsmith_index_u32(u_input.b.x, 29u)] & ~global0[_wgslsmith_index_u32(var_1, 29u)])).c;
    let var_3 = vec2<u32>(var_1, 33891u);
    let var_4 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(_wgslsmith_sub_u32(var_1, 1u), _wgslsmith_add_u32(56274u, var_3.x)) & 4294967295u, ~(~1u), _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(23394u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), ~global0[_wgslsmith_index_u32(67304u, 29u)]), select(vec4<u32>(var_1, 36666u, var_1, 4294967295u), global0[_wgslsmith_index_u32(var_1, 29u)], vec4<bool>(var_2.x, var_2.x, true, var_2.x)) & firstTrailingBit(global0[_wgslsmith_index_u32(var_1, 29u)]))), 8u)], !var_2.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1, u_input.b.x), 8u)], select(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], vec4<u32>(u_input.b.x, 24752u, _wgslsmith_mod_u32(u_input.b.x, var_3.x), func_4(Struct_3(true, u_input.e.x), var_2.x, global1[_wgslsmith_index_u32(0u, 8u)], vec4<u32>(var_1, var_3.x, 1u, 1u)).b) >> (countOneBits(global0[_wgslsmith_index_u32(22025u, 29u)]) % vec4<u32>(32u)), var_2.x)).c;
    var var_5 = ~(~(var_1 ^ (u_input.b.x << (u_input.b.x % 32u)))) & var_1;
    var_2 = var_4;
    var var_6 = func_4(Struct_3(false, ~abs(firstTrailingBit(0i))), !func_6(Struct_3(var_4.x, u_input.a << (u_input.b.x % 32u)), var_2.yxw, _wgslsmith_mod_u32(var_1, var_3.x) ^ ~u_input.b.x, select(0u, 4294967295u, select(var_2.x, var_2.x, true))).a, func_6(Struct_3(false, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(u_input.e.xx, u_input.d.xy))), !select(var_4.yyx, !var_2.yyx, true), reverseBits(_wgslsmith_clamp_u32(abs(u_input.b.x), 4294967295u, 0u)), u_input.b.x >> (0u % 32u)), vec4<u32>(abs(reverseBits(var_3.x) << (~var_1 % 32u)), _wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 1u)), vec2<u32>(70441u, var_3.x), vec2<bool>(false, true)), vec2<u32>(~4294967295u, var_3.x)), ~(~var_3.x), abs(var_1 << ((var_1 << (var_3.x % 32u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_mult_i32(func_1().c, var_0.x)));
}

