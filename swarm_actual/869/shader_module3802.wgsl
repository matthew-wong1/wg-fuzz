struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<f32, 22>;

var<private> global1: array<bool, 8>;

var<private> global2: array<f32, 13> = array<f32, 13>(-1000f, -1857f, 984f, -845f, 1549f, -1000f, -759f, 1612f, 141f, 1341f, -1559f, -1000f, -1000f);

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(0i), Struct_2(-85798i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(-4177i), Struct_2(i32(-2147483648)), Struct_2(16486i), Struct_2(-67191i), Struct_2(48736i), Struct_2(0i), Struct_2(-67398i), Struct_2(8357i), Struct_2(5328i), Struct_2(-48100i), Struct_2(16464i), Struct_2(2147483647i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(-21951i), Struct_2(-6117i), Struct_2(-1i), Struct_2(1i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(49126i), Struct_2(1i), Struct_2(1i), Struct_2(2147483647i), Struct_2(33592i), Struct_2(-24664i), Struct_2(-1i));

var<private> global4: array<f32, 28> = array<f32, 28>(1406f, -951f, -258f, -731f, 549f, 2516f, 1185f, 521f, 1280f, 105f, -668f, -660f, -304f, 804f, -333f, 1956f, -1225f, 1432f, 2212f, 657f, -146f, -1556f, -389f, 592f, 310f, -532f, -108f, 755f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = ~1u;
    let var_1 = global3[_wgslsmith_index_u32(var_0 & min(1u, ~u_input.a), 32u)];
    global0 = array<f32, 22>();
    global2 = array<f32, 13>();
    let var_2 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 22u)]))), -449f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u ^ u_input.a, 22u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(53262u, 22u)])))), abs(vec3<u32>(48831u, 31018u, _wgslsmith_clamp_u32(var_0, var_0, 0u))) >> (~(vec3<u32>(4294967295u, u_input.a, 4294967295u) ^ vec3<u32>(1u, 23785u, 0u)) % vec3<u32>(32u)));
    return var_2.b;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, 30395u, u_input.a, 28141u), select(vec4<u32>(1u, 4294967295u, 13583u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4074u), vec4<bool>(false, true, true, true)), any(vec2<bool>(true, true))) & vec4<u32>(~13809u, ~9648u, 62080u, ~1u), countOneBits(firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    global2 = array<f32, 13>();
    var var_1 = 1i;
    global1 = array<bool, 8>();
    let var_2 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(55896u, 22u)], global4[_wgslsmith_index_u32(var_0.x, 28u)])), 1000f)), global0[_wgslsmith_index_u32(23492u, 22u)], global0[_wgslsmith_index_u32(~18952u, 22u)])), func_3(vec3<bool>(false, true, all(select(vec4<bool>(true, false, arg_0, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], arg_0, true, global1[_wgslsmith_index_u32(u_input.a, 8u)]), global1[_wgslsmith_index_u32(u_input.a, 8u)])))));
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 8u)] | true;
    let var_2 = select(!(!vec4<bool>(true, !global1[_wgslsmith_index_u32(0u, 8u)], arg_0.a != 22690i, func_2(true))), !vec4<bool>(any(!arg_1.zz), arg_1.x, any(vec2<bool>(true, true)), any(arg_1.zx)), arg_1.x);
    global1 = array<bool, 8>();
    let var_3 = abs(vec3<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, 0u, 46928u), arg_2) ^ reverseBits(~0u), u_input.a));
    return Struct_3(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(31121u, 13u)], global0[_wgslsmith_index_u32(6895u, 22u)], -430f, global0[_wgslsmith_index_u32(6440u, 22u)])), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(372f, 922f, -691f, 386f), vec4<f32>(-160f, global4[_wgslsmith_index_u32(4294967295u, 28u)], -260f, global4[_wgslsmith_index_u32(4294967295u, 28u)]))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(u_input.a, 28u)], global4[_wgslsmith_index_u32(arg_2, 28u)], 824f)) * vec4<f32>(874f, global4[_wgslsmith_index_u32(var_3.x, 28u)], global4[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(3346u, 13u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(32662u, 22u)], global2[_wgslsmith_index_u32(37005u, 13u)], -371f, global2[_wgslsmith_index_u32(0u, 13u)]) - vec4<f32>(global2[_wgslsmith_index_u32(arg_2, 13u)], 487f, global4[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(arg_2, 13u)])))), !vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.a, 8u)], false, arg_1.x)))), -1000f, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1158f, _wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.a, 28u)]))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) - _wgslsmith_f_op_f32(613f - global0[_wgslsmith_index_u32(0u, 22u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(417f))))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> vec3<bool> {
    return select(vec3<bool>(!all(!vec4<bool>(arg_3.a, false, false, true)), arg_3.a, false), !select(!(!vec3<bool>(arg_1, global1[_wgslsmith_index_u32(102379u, 8u)], true)), vec3<bool>(func_2(arg_3.a), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, u_input.a), 8u)], false && arg_3.a), !select(vec3<bool>(false, true, false), vec3<bool>(false, arg_3.a, global1[_wgslsmith_index_u32(14609u, 8u)]), arg_3.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 28>();
    var var_0 = _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_clamp_u32(abs(reverseBits(4294967295u)), _wgslsmith_clamp_u32(~u_input.a, u_input.a, ~32714u), u_input.a), ~firstTrailingBit(~4294967295u)), 13u)]));
    let var_1 = !(!select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 8u)]), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], true, false)), global1[_wgslsmith_index_u32(1u, 8u)]));
    var var_2 = vec2<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)] || false, u_input.b <= u_input.b, var_1.x, false | var_1.x), vec4<bool>(all(var_1.zx), false, any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 8u)], false, global1[_wgslsmith_index_u32(4294967295u, 8u)])), any(var_1.zy)), var_1.x)), !all(func_4(u_input.a, true, firstLeadingBit(u_input.b), func_1(global3[_wgslsmith_index_u32(u_input.a, 32u)], vec3<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(81045u, 8u)]), u_input.a))));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(24083u, 13u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global4[_wgslsmith_index_u32(u_input.a, 28u)], -1901f)))))), vec3<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 41738u), u_input.a) << (max(firstTrailingBit(0u), ~u_input.a) % 32u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(select(u_input.a, u_input.a, var_1.x), 964u, u_input.a), u_input.a)));
    var var_4 = reverseBits(-(~(-abs(vec3<i32>(-15906i, -2147483647i, u_input.b)))));
    let var_5 = ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 4294967295u, u_input.a, 1u)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(41033u, u_input.a, 30725u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b.x, var_3.b.x, u_input.a, 1u), vec4<u32>(4294967295u, var_3.b.x, u_input.a, var_3.b.x))) % vec4<u32>(32u)), vec4<u32>(countOneBits(~u_input.a), 1u, u_input.a, 69217u));
    var var_6 = func_1(global3[_wgslsmith_index_u32(~(~u_input.a), 32u)], select(select(func_4(max(4294967295u, var_5.x), any(vec4<bool>(false, false, var_2.x, var_1.x)), ~u_input.b, func_1(global3[_wgslsmith_index_u32(1u, 32u)], vec3<bool>(true, global1[_wgslsmith_index_u32(var_5.x, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]), var_3.b.x)), func_4(u_input.a, var_1.x, min(u_input.b, 302i), func_1(global3[_wgslsmith_index_u32(var_3.b.x, 32u)], vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], false, false), 4294967295u)), vec3<bool>(all(vec4<bool>(true, true, true, false)), select(true, true, false), false)), vec3<bool>(var_2.x, func_4(firstTrailingBit(u_input.a), any(vec3<bool>(true, var_1.x, var_1.x)), -u_input.b, func_1(global3[_wgslsmith_index_u32(0u, 32u)], var_1, 29916u)).x, true), select(var_1, vec3<bool>(!var_2.x, 2147483647i == var_4.x, var_3.b.x > var_3.b.x), select(vec3<bool>(var_2.x, var_2.x, true), select(var_1, vec3<bool>(true, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 8u)], true)), true))), ~20625u).d;
    let var_7 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1040f, var_6.a.x, 215f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.a.x, global2[_wgslsmith_index_u32(var_5.x, 13u)], var_3.a.a.x)))) * var_3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(var_4.x, u_input.b)), vec2<i32>(-1i) * -vec2<i32>(u_input.b, var_4.x)));
}

