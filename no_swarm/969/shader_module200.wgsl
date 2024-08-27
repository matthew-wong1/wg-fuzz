struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-69617i, -61541i, 21977i, -1i, 2147483647i, 13173i, 2147483647i, 0i, 65833i, 1i, 22794i, 2147483647i, 52529i);

var<private> global1: f32 = 1178f;

var<private> global2: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_2(vec2<u32>(0u, 55976u), -1i)), Struct_4(Struct_2(vec2<u32>(66107u, 12433u), -1i)), Struct_4(Struct_2(vec2<u32>(12882u, 0u), i32(-2147483648))), Struct_4(Struct_2(vec2<u32>(1u, 100110u), 21029i)), Struct_4(Struct_2(vec2<u32>(1u, 10311u), 14493i)), Struct_4(Struct_2(vec2<u32>(41533u, 19808u), 0i)), Struct_4(Struct_2(vec2<u32>(4294967295u, 0u), 2147483647i)), Struct_4(Struct_2(vec2<u32>(4294967295u, 1u), 2147483647i)), Struct_4(Struct_2(vec2<u32>(30877u, 4294967295u), -2886i)), Struct_4(Struct_2(vec2<u32>(1214u, 1u), i32(-2147483648))), Struct_4(Struct_2(vec2<u32>(0u, 9596u), -1i)), Struct_4(Struct_2(vec2<u32>(0u, 67415u), 2147483647i)), Struct_4(Struct_2(vec2<u32>(4294967295u, 37847u), 2147483647i)), Struct_4(Struct_2(vec2<u32>(0u, 4294967295u), 0i)));

var<private> global3: array<u32, 1> = array<u32, 1>(10696u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1134f * -1497f) + _wgslsmith_div_f32(-1226f, -1362f)), 1268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1095f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1076f, -1574f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-663f, 2066f, -1002f)))))))));
    global1 = 622f;
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_1 = Struct_2(u_input.d.yz, arg_2.x);
    return ~1i;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(step(1652f, -778f)));
    let var_1 = true;
    global1 = -110f;
    let var_2 = Struct_2(arg_1.a, _wgslsmith_div_i32(u_input.e, global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, 606u), vec3<u32>(1u, arg_1.a.x, arg_1.a.x))), 13u)]));
    global2 = array<Struct_4, 14>();
    return vec3<f32>(820f, 440f, _wgslsmith_f_op_f32(-1000f - 855f));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(16133i, Struct_2(_wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a, u_input.a), min(u_input.d.yy, u_input.a) ^ abs(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 1u)], u_input.c))), min(global0[_wgslsmith_index_u32(2417u, 13u)], countOneBits(~global0[_wgslsmith_index_u32(78549u, 13u)]))), 4294967295u >> (1u % 32u), vec4<i32>(u_input.e, -(i32(-1i) * -32302i), func_3(any(vec2<bool>(false, false)), max(-vec2<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(82687u, 1u)], 13u)], u_input.e), ~vec2<i32>(u_input.e, global0[_wgslsmith_index_u32(0u, 13u)])), vec4<i32>(3226i, u_input.e, -u_input.e, global0[_wgslsmith_index_u32(~29221u, 13u)])), -58229i)));
    global2 = array<Struct_4, 14>();
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(-11453i | global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_2(u_input.a, 1851i), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13866u, 1337u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(0u, 1u)], u_input.a.x)), vec4<i32>(u_input.e, -2147483647i, global0[_wgslsmith_index_u32(47629u, 13u)], u_input.e) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], -2147483647i, global0[_wgslsmith_index_u32(30841u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)]))).x))));
    let var_3 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(u_input.d.xxz, vec3<u32>(u_input.d.x, 0u, global3[_wgslsmith_index_u32(12286u, 1u)]))), firstTrailingBit(4294967295u)), min(u_input.a, ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], 0u) ^ (vec2<u32>(31712u, u_input.b) >> (vec2<u32>(global3[_wgslsmith_index_u32(17537u, 1u)], 4294967295u) % vec2<u32>(32u))))), func_3(global3[_wgslsmith_index_u32(16911u, 1u)] <= 28878u, firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 1u)], 13u)], u_input.e), ~vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 13u)]))), ~vec4<i32>(-u_input.e, 0i, ~global0[_wgslsmith_index_u32(0u, 13u)], firstTrailingBit(-61312i))));
    return u_input.d.ww;
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_2(~(~u_input.d.wx), arg_0.x);
    global2 = array<Struct_4, 14>();
    var var_1 = arg_0;
    var var_2 = func_2();
    let var_3 = min(vec3<i32>(_wgslsmith_dot_vec2_i32(-var_1.zz, countOneBits(arg_0.xz)), -1i, _wgslsmith_div_i32(arg_0.x, _wgslsmith_mult_i32(1i, 42214i))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.x, arg_0.x), firstLeadingBit(arg_0.x)), ~(i32(-1i) * -1i), u_input.e)) >> (u_input.d.xxz % vec3<u32>(32u));
    return Struct_3(-357f);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1907f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a))) - _wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(718f * _wgslsmith_f_op_f32(-arg_3.a)))) - arg_3.a));
    let var_1 = Struct_1(reverseBits(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global3[_wgslsmith_index_u32(arg_2.x, 1u)], 4294967295u, arg_0.x, global3[_wgslsmith_index_u32(arg_2.x, 1u)]), vec4<u32>(u_input.d.x, 4294967295u, 1u, 58848u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 0u), arg_0)), 13u)], func_3(true, vec2<i32>(global0[_wgslsmith_index_u32(51515u, 13u)], 2147483647i), vec4<i32>(-1358i, global0[_wgslsmith_index_u32(73961u, 13u)], u_input.e, -20177i)) >> (~1u % 32u), 1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.e), vec3<i32>(global0[_wgslsmith_index_u32(54328u, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)], -1i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 13u)], u_input.e, -2147483647i)) | vec3<i32>(4015i, global0[_wgslsmith_index_u32(arg_2.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), -(~vec3<i32>(0i, -66611i, global0[_wgslsmith_index_u32(4294967295u, 13u)])), vec3<i32>(firstLeadingBit(u_input.e), global0[_wgslsmith_index_u32(21711u, 13u)] >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)] % 32u), global0[_wgslsmith_index_u32(arg_0.x, 13u)] & 0i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(arg_2.x, 13u)]) << (arg_2.zwz % vec3<u32>(32u)), ~firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 13u)], 2147483647i, u_input.e)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, arg_1.a)), vec2<f32>(2611f, _wgslsmith_f_op_f32(306f + _wgslsmith_f_op_f32(-arg_1.a)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(any(vec4<bool>(false, true, false, true)), 1277f >= var_0.x)), true));
    let var_2 = 34012i;
    var_0 = _wgslsmith_f_op_vec2_f32(min(var_1.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_1.c, var_1.c, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_1.d.x, true), var_1.d.x), var_1.d.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-1888f, _wgslsmith_f_op_f32(var_1.c.x + var_0.x)), _wgslsmith_f_op_vec2_f32(-var_1.c))))));
    var var_3 = firstLeadingBit(var_1.a.xx);
    return arg_1;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_1(countOneBits(~vec4<i32>(u_input.e, 41961i, -1i, u_input.e)) ^ (vec4<i32>(reverseBits(u_input.e), u_input.e, 0i, ~u_input.e) ^ firstLeadingBit(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(arg_3, 13u)], u_input.e, global0[_wgslsmith_index_u32(1u, 13u)]) | vec4<i32>(global0[_wgslsmith_index_u32(53944u, 13u)], 44646i, 0i, u_input.e))), select(vec3<i32>(countOneBits(u_input.e), 14504i, -2147483647i), reverseBits(vec3<i32>(26334i, u_input.e, 36500i) << (vec3<u32>(87744u, 10318u, 8671u) % vec3<u32>(32u))), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) - vec2<f32>(arg_1.a, arg_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -190f) + vec2<f32>(1419f, arg_1.a)))))), !(!select(select(vec2<bool>(arg_2.x, true), arg_2, arg_2), select(arg_2, arg_2, arg_2), all(vec4<bool>(false, arg_0, arg_2.x, false)))));
    var_0 = Struct_1(var_0.a, vec3<i32>(global0[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(reverseBits(abs(arg_3)), 1u)], firstLeadingBit(74359u), arg_2.x), 13u)], reverseBits(select(31543i, global0[_wgslsmith_index_u32(arg_3, 13u)] | -531i, false)), global0[_wgslsmith_index_u32(select(firstTrailingBit(u_input.b), ~arg_3, true) ^ 4294967295u, 13u)]), vec2<f32>(_wgslsmith_f_op_f32(abs(-245f)), 1151f), arg_2);
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-386f - 103f)))))));
    var var_1 = ~_wgslsmith_mod_vec3_u32(u_input.d.zwy, vec3<u32>(~min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_3, 1u)], 1u)], arg_3), ~arg_3 & _wgslsmith_mod_u32(arg_3, 4294967295u), arg_3));
    var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(23116i), 0i, global0[_wgslsmith_index_u32(select(var_1.x, 1u, false), 13u)], func_3(true, var_0.a.yz, vec4<i32>(-2147483647i, 0i, -57234i, 0i))), abs(vec4<i32>(-16560i, var_0.b.x, u_input.e, 27119i)), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.c, 1u)], 14444u), 13u)], 42244i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], 0i), max(var_0.a.x, -1i))), countOneBits(vec3<i32>(-1i) * -(vec3<i32>(-29508i, u_input.e, var_0.a.x) & vec3<i32>(var_0.a.x, global0[_wgslsmith_index_u32(var_1.x, 13u)], 1i))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.x, -117f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.c)) + var_0.c), true)))), vec2<bool>(arg_2.x, any(!vec2<bool>(true, arg_0))));
    return -(~(select(~vec2<i32>(var_0.b.x, 42097i), countOneBits(var_0.a.yx), !vec2<bool>(arg_2.x, false)) >> (_wgslsmith_mod_vec2_u32(u_input.a, ~vec2<u32>(global3[_wgslsmith_index_u32(u_input.c, 1u)], 1u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -135f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-663f))))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(1f * var_0.x));
    var var_2 = Struct_2(u_input.a, _wgslsmith_mult_i32(-1i, abs(-1i)));
    let var_3 = vec2<i32>(-1i) * -func_6(true, func_5(vec4<u32>(var_2.a.x, 40654u, 4294967295u, var_2.a.x), Struct_3(var_1.a), ~vec4<u32>(1u, 1u, var_2.a.x, 0u), func_1(vec3<i32>(0i, 2147483647i, u_input.e))), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), ~(~4294967295u));
    var var_4 = ~(24737u & ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.a.x, 1u)], 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(~max(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 1u)], 13u)], 2147483647i)), vec4<u32>(min(u_input.d.x, ~_wgslsmith_mod_u32(var_2.a.x, var_2.a.x)), 23617u, ~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], _wgslsmith_mult_u32(u_input.b, 25080u)), ~var_2.a.x | select(1u, select(12532u, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false), 1056f >= var_0.x)));
}

