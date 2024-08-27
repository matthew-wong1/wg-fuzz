struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, true, true, true, false, false, true, true, false, true, false, false, false, false, false, true, false, false, false, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = !select(select(!(!vec3<bool>(global1[_wgslsmith_index_u32(20265u, 21u)], true, false)), !vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55574u, 20u)], 20u)], 21u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 21u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 20u)], 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4612u, 20u)], 20u)], 20u)], 20u)], 21u)]), vec3<bool>(true, true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 21u)], false, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 21u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)])))), select(vec3<bool>(!global1[_wgslsmith_index_u32(1u, 21u)], all(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 21u)], false, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)])), true), vec3<bool>(select(false, global1[_wgslsmith_index_u32(1u, 21u)], false), global1[_wgslsmith_index_u32(4294967295u, 21u)] != true, global1[_wgslsmith_index_u32(u_input.c, 21u)] | global1[_wgslsmith_index_u32(40504u, 21u)]), any(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 21u)]))), (_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 20u)], u_input.c), vec2<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 4294967295u)) >> (max(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)]) % 32u)) <= 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(175f, 344f) + vec2<f32>(439f, 1648f)))))))));
    global1 = array<bool, 21>();
    global0 = array<u32, 20>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -242f)))))), var_1.x);
    return select(!select(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(13805u, 21u)], true, false)), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(88539u, 21u)], global1[_wgslsmith_index_u32(25180u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), !vec4<bool>(var_0.x, false, true, true), true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c << (4294967295u % 32u), 21u)], var_0.x, !global1[_wgslsmith_index_u32(u_input.c, 21u)], true)), !vec4<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(90125u, 21u)], true, global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 21u)])), !(2147483647i <= u_input.a.x), u_input.a.x > -arg_0.a.x), any(select(select(vec2<bool>(var_0.x, global1[_wgslsmith_index_u32(58414u, 21u)]), !var_0.yy, true), !var_0.yz, var_0.xz)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: i32) -> vec3<i32> {
    let var_0 = Struct_3(4294967295u, Struct_1(~_wgslsmith_sub_vec3_i32(arg_2.c.wxy, u_input.a.yzx)), arg_2.a);
    var var_1 = global0[_wgslsmith_index_u32(1u, 20u)];
    let var_2 = Struct_2(all(select(!(!vec4<bool>(false, true, false, arg_2.a.a)), func_3(Struct_1(vec3<i32>(1i, 0i, arg_3))), true)), any(!vec3<bool>(arg_2.a.a, true, false)));
    var var_3 = Struct_4((~u_input.c & 0u) >> ((_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_2.b, arg_0.x), 1u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 0u, 24998u, arg_0.x), vec4<u32>(arg_0.x, u_input.c, 1u, arg_0.x)), vec4<u32>(global0[_wgslsmith_index_u32(15053u, 20u)], 4u, 0u, arg_0.x))) % 32u), !(!func_3(var_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, -3078f, arg_1.x))) + vec3<f32>(-305f, 169f, 1000f)));
    var var_4 = ~(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 56668u, arg_0.x), vec3<u32>(var_3.a, 35205u, 1u)))) & ~((~vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(1u, 20u)]) ^ reverseBits(vec3<u32>(1u, arg_0.x, 24270u))) | (~vec3<u32>(var_3.a, global0[_wgslsmith_index_u32(0u, 20u)], 0u) ^ ~vec3<u32>(32614u, 6011u, 82768u)));
    return arg_2.c.xyw;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_5) -> f32 {
    var var_0 = Struct_1(min(-func_2(vec2<u32>(4294967295u, arg_2.b), vec4<f32>(-1431f, 332f, -796f, -1000f), Struct_5(Struct_2(true, global1[_wgslsmith_index_u32(arg_2.b, 21u)]), 1u, vec4<i32>(arg_2.c.x, -2147483647i, 0i, -30352i), vec2<i32>(u_input.a.x, 1i), vec2<i32>(32363i, arg_2.d.x)), -2147483647i), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_0, 1i, u_input.a.x), _wgslsmith_mod_vec3_i32(u_input.a.wxy, u_input.a.zzw))) & vec3<i32>(select(~arg_2.c.x, countOneBits(u_input.a.x), true), _wgslsmith_mult_i32(firstTrailingBit(arg_2.d.x), ~6499i), 25447i));
    var var_1 = select(~max(~countOneBits(arg_1.zx), ~arg_1.xy), arg_1.zx, func_3(Struct_1(arg_2.c.yxy)).wx);
    let var_2 = _wgslsmith_mult_i32(~(i32(-1i) * -64529i), _wgslsmith_div_i32(~arg_0, 0i));
    var_1 = vec2<u32>(select(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(11646u, 20u)]) ^ arg_2.b, ~(var_1.x & arg_2.b), !arg_2.a.b), 0u) >> ((arg_1.xx ^ ~(~select(vec2<u32>(1u, 0u), vec2<u32>(83501u, 1u), vec2<bool>(true, false)))) % vec2<u32>(32u));
    var var_3 = arg_2;
    return 1247f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(123f, 737f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1110f - -1890f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-586f, 955f) + _wgslsmith_div_f32(-2432f, 902f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(24814i, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.c, u_input.c), Struct_5(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), 0u, vec4<i32>(u_input.b.x, -2110i, 27321i, 2147483647i), u_input.a.xz, u_input.a.ww))), _wgslsmith_f_op_f32(f32(-1f) * -309f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1163f, 459f, -616f, 575f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2177f, 1335f, 884f, 1325f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(803f, -1248f, -643f, 439f), vec4<f32>(1558f, -1246f, -712f, -1292f), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10361u, 20u)], 20u)], 20u)], 21u)]))))), vec4<f32>(-529f, _wgslsmith_f_op_f32(func_1(1i, ~reverseBits(vec3<u32>(u_input.c, 78994u, global0[_wgslsmith_index_u32(1u, 20u)])), Struct_5(Struct_2(true, global1[_wgslsmith_index_u32(u_input.c, 21u)]), firstTrailingBit(u_input.c), vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, u_input.b.x) << (vec4<u32>(14951u, u_input.c, 0u, u_input.c) % vec4<u32>(32u)), -vec2<i32>(24665i, u_input.a.x), -vec2<i32>(u_input.a.x, u_input.a.x)))), -914f, 941f));
    var var_1 = Struct_4(~(~(u_input.c & _wgslsmith_div_u32(0u, 4294967295u))), vec4<bool>(false, !(global1[_wgslsmith_index_u32(48232u, 21u)] | global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 21u)]) & any(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)])), true, 1117f > var_0.x), _wgslsmith_f_op_vec3_f32(-var_0.zwy));
    let var_2 = -vec4<i32>(u_input.a.x, u_input.a.x, 48135i, max(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), 13734i));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-284f + var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1750f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1682f)), _wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_1.c.x, 1000f))))), var_1.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2270f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-927f * var_0.x)), var_1.c.x)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x - var_0.x), 734f);
    let x = u_input.a;
    s_output = StorageBuffer(~73293u, 13043u);
}

