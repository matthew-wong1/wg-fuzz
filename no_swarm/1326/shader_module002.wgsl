struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(true, vec2<i32>(2147483647i, 18884i), -332f)), vec4<f32>(-1000f, -466f, 646f, -1607f), Struct_1(true, vec2<i32>(0i, 4539i), 1718f), Struct_1(false, vec2<i32>(2147483647i, -1i), -2002f), Struct_2(Struct_1(true, vec2<i32>(33609i, -22348i), 497f)));

var<private> global2: bool;

var<private> global3: array<i32, 22>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 14591u, u_input.a), ~vec4<u32>(u_input.a, 18185u, 4294967295u, 51038u)) ^ 65328u, _wgslsmith_div_u32(reverseBits(~u_input.a), firstTrailingBit(u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.a.c))) + arg_2) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 * arg_0))), _wgslsmith_f_op_f32(755f - _wgslsmith_f_op_f32(-940f - -1251f)))) * _wgslsmith_f_op_f32(sign(arg_2))));
    let var_2 = global1.e;
    global2 = false;
    let var_3 = global1.a;
    return _wgslsmith_f_op_f32(1000f - var_2.a.c);
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    global1 = Struct_3(Struct_2(Struct_1(true, vec2<i32>(5003i, global1.a.a.b.x) | countOneBits(arg_0.b), -1000f)), global1.b, Struct_1(any(!(!global4.yw)), -reverseBits(vec2<i32>(arg_0.b.x, arg_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.a.c))), 1590f)), Struct_1(true, global1.a.a.b << (vec2<u32>(~u_input.a, 55615u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), global1.e);
    var var_0 = Struct_1(all(!global4.wz), -global1.c.b, _wgslsmith_f_op_f32(-arg_0.c));
    let var_1 = global1.a;
    global1 = Struct_3(global1.e, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(-109f, arg_0.c, true)), global1.c.c, 836f, _wgslsmith_f_op_f32(-global1.a.a.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2676f, -156f, arg_0.c, 579f))) * vec4<f32>(-1862f, -1086f, _wgslsmith_f_op_f32(f32(-1f) * -879f), 1045f)))), Struct_1(all(global4.zyw), vec2<i32>(~abs(2147483647i), reverseBits(11779i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.a.c + 1000f)))))), arg_0, Struct_2(Struct_1(false, _wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 22u)], var_1.a.b.x) ^ var_0.b, vec2<i32>(global1.a.a.b.x, var_1.a.b.x) | vec2<i32>(-8623i, 1122i), -arg_0.b), _wgslsmith_f_op_f32(-2032f + var_0.c))));
    var var_2 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f - global1.a.a.c) - _wgslsmith_f_op_f32(ceil(var_1.a.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.c * 1196f))), -611f, _wgslsmith_f_op_f32(-arg_0.c))), Struct_1(var_1.a.a, select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], 1i, global3[_wgslsmith_index_u32(18634u, 22u)]), vec3<i32>(arg_0.b.x, global3[_wgslsmith_index_u32(u_input.a, 22u)], arg_0.b.x)), ~(-2147483647i)), var_1.a.b, !vec2<bool>(var_1.a.a, var_0.a)), _wgslsmith_f_op_f32(abs(-398f))), var_1.a, global1.a);
    return ~vec2<i32>(-var_1.a.b.x, reverseBits(~21924i) & arg_0.b.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(max(~(~global3[_wgslsmith_index_u32(u_input.a, 22u)]), min(global1.e.a.b.x, 1i)) < (_wgslsmith_sub_i32(~(-20774i), -1i) | _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(33886i, 6130i), vec2<i32>(-37884i, 86662i), vec2<i32>(global1.c.b.x, global1.c.b.x)), -vec2<i32>(-1i, global1.d.b.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.c.b.x, _wgslsmith_mod_i32(global1.d.b.x, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a, 22u)], -1i))), func_4(Struct_1(global4.x || true, _wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(20317u, 22u)]), global1.c.b), _wgslsmith_f_op_f32(func_3(global1.b.x, vec4<i32>(14146i, -1i, 29503i, -1i), 700f))))), _wgslsmith_f_op_f32(-global1.a.a.c));
    var var_1 = !global4.yy;
    let var_2 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.b - global1.b), vec4<f32>(1096f, 1563f, var_0.c, var_0.c), !vec4<bool>(true, var_0.a, global1.e.a.a, true))))), global1.d, Struct_1(false, reverseBits(var_0.b), -168f), global1.e);
    global2 = all(!select(global0[_wgslsmith_index_u32(reverseBits(~u_input.a), 31u)], global0[_wgslsmith_index_u32(1u, 31u)], select(!global0[_wgslsmith_index_u32(u_input.a, 31u)], !global0[_wgslsmith_index_u32(u_input.a, 31u)], true)));
    let var_3 = firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))) & ~(~(~vec4<u32>(0u, u_input.a, 26000u, u_input.a)));
    return Struct_3(global1.e, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-612f, var_2.d.c, 1352f, global1.d.c)), true)))), var_2.d, Struct_1(global4.x, _wgslsmith_clamp_vec2_i32(global1.e.a.b, _wgslsmith_mult_vec2_i32(vec2<i32>(-1925i, 1i), ~global1.a.a.b), ~firstTrailingBit(global1.c.b)), global1.b.x), var_2.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> Struct_3 {
    var var_0 = firstTrailingBit(~vec3<i32>(firstLeadingBit(-1i ^ arg_0.b.x), 0i, arg_2));
    var var_1 = arg_0.b.x ^ -18508i;
    global1 = func_2();
    let var_2 = min(_wgslsmith_sub_u32(abs(u_input.a), ~(~0u)), u_input.a);
    var var_3 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.e.a, -(vec2<i32>(_wgslsmith_div_i32(global1.d.b.x, -20511i), _wgslsmith_mult_i32(-28280i, global1.d.b.x)) ^ select(global1.e.a.b, -vec2<i32>(2147483647i, -2147483647i), !global1.a.a.a)), -2147483647i);
    global2 = !global4.x | all(select(global4.wxz, global4.zzx, vec3<bool>(global1.d.a, true, true)));
    let var_1 = 1u;
    global2 = 0u >= select(var_1, var_1, !(func_2().e.a.a | (var_0.a.a.b.x != global1.a.a.b.x)));
    global4 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(~min(var_1, 0u), 4294967295u)), 31u)];
    var var_2 = select(vec3<bool>(true, func_1(Struct_1(var_0.e.a.a, ~global1.c.b, _wgslsmith_f_op_f32(round(var_0.a.a.c))), vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 22u)] ^ 1i, _wgslsmith_mod_i32(var_0.e.a.b.x, global3[_wgslsmith_index_u32(var_1, 22u)])), firstTrailingBit(~(-42853i))).a.a.a, !(any(vec3<bool>(true, global4.x, false)) == var_0.c.a)), select(global4.xwx, vec3<bool>(true, !any(global4.wx), all(vec3<bool>(var_0.a.a.a, global1.e.a.a, global4.x))), global1.e.a.a), var_0.d.a);
    var var_3 = select(vec4<bool>(select(all(vec3<bool>(true, false, var_0.c.a)), var_2.x, global1.c.a), !all(select(global4.xyw, vec3<bool>(false, true, global4.x), var_0.d.a)), true, any(global4.wyy)), select(global0[_wgslsmith_index_u32(9618u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], global1.d.a), global4.x);
    let var_4 = var_0.c.b.x;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.a.b.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(var_0.d.c, -716f), func_1(Struct_1(var_0.d.a, vec2<i32>(global1.d.b.x, 36370i), -1963f), vec2<i32>(global1.a.a.b.x, -28375i), var_5.d.b.x).e.a.c, _wgslsmith_f_op_f32(139f * 450f), _wgslsmith_f_op_f32(step(global1.c.c, _wgslsmith_f_op_f32(var_5.e.a.c - global1.a.a.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c.c, var_5.b.x, -2086f, 1000f) + var_0.b))))));
}

