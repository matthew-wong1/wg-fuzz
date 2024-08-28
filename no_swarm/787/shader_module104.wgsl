struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(3549u, 1u), vec2<bool>(true, true));

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global2: array<u32, 24>;

var<private> global3: i32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(select(~select(~global0.a.x, 1u, global0.b.x && true), global2[_wgslsmith_index_u32(~(~(~765u)), 24u)], (-u_input.a.x == reverseBits(2147483647i)) == true), select(select(select(vec4<bool>(true, false, global0.b.x, global0.b.x), select(vec4<bool>(false, global0.b.x, true, true), vec4<bool>(global0.b.x, false, global0.b.x, true), global0.b.x), !vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x)), !vec4<bool>(true, global0.b.x, false, true), select(select(vec4<bool>(global0.b.x, false, false, false), vec4<bool>(true, false, global0.b.x, global0.b.x), global0.b.x), select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(false, global0.b.x, global0.b.x, true), vec4<bool>(global0.b.x, true, false, true)), !vec4<bool>(global0.b.x, false, false, true))), !vec4<bool>(true, !global0.b.x, all(vec4<bool>(global0.b.x, true, true, global0.b.x)), global0.b.x), vec4<bool>(global0.b.x, all(global0.b), max(u_input.c.x, u_input.c.x) < -26984i, true)));
    var var_1 = Struct_2(~u_input.b.wz, vec2<bool>(false, global0.b.x));
    global0 = Struct_2(min(_wgslsmith_sub_vec2_u32(vec2<u32>(27489u, global2[_wgslsmith_index_u32(14353u, 24u)]), ~vec2<u32>(global0.a.x, 31036u)) & countOneBits(var_1.a), _wgslsmith_div_vec2_u32(~u_input.b.zy >> (~u_input.b.xx % vec2<u32>(32u)), firstLeadingBit(u_input.b.xy))), var_1.b);
    let var_2 = global0.b;
    let var_3 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(abs(global0.a.x), 24u)], var_0.a ^ u_input.b.x), ~(u_input.b.yx << (vec2<u32>(var_1.a.x, global0.a.x) % vec2<u32>(32u))), abs(vec2<u32>(var_0.a, global2[_wgslsmith_index_u32(global0.a.x, 24u)]))), select(vec2<bool>(true, all(select(vec2<bool>(false, var_0.b.x), var_1.b, vec2<bool>(var_0.b.x, var_1.b.x)))), select(vec2<bool>(!var_0.b.x, true), var_1.b, -u_input.c.x != 1i), var_0.b.zz));
    return select(vec2<bool>(select(false, false, !any(vec3<bool>(var_1.b.x, false, false))), ~select(global2[_wgslsmith_index_u32(var_3.a.x, 24u)], u_input.b.x, true) >= abs(global2[_wgslsmith_index_u32(global0.a.x, 24u)])), !select(!(!vec2<bool>(true, var_1.b.x)), vec2<bool>(true, true), global0.b), true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global3 = u_input.a.x;
    let var_0 = arg_0;
    let var_1 = var_0;
    global3 = ~(-u_input.a.x >> (37862u % 32u));
    let var_2 = !func_3();
    return Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b.zzz ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global0.a.x, 12432u, 35697u), vec3<u32>(global2[_wgslsmith_index_u32(var_0.a.x, 24u)], 73865u, global0.a.x))), min(~(u_input.b.wyw | u_input.b.wzz), vec3<u32>(global0.a.x, u_input.b.x, 1u) & vec3<u32>(0u, 4294967295u, 73496u))), arg_1.b);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = false;
    var_0 = true;
    global0 = Struct_2(global0.a, global0.b);
    var var_1 = max(~vec2<u32>(global0.a.x, arg_1.a), firstLeadingBit(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.b.x), abs(vec2<u32>(59398u, global2[_wgslsmith_index_u32(30510u, 24u)])), vec2<u32>(5322u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)], 24u)]))));
    var_0 = true;
    return u_input.c.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = u_input.b.zxx;
    global2 = array<u32, 24>();
    global2 = array<u32, 24>();
    global0 = Struct_2(vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, arg_1, global2[_wgslsmith_index_u32(var_0.x, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), vec4<u32>(u_input.b.x, global0.a.x, 0u, u_input.b.x)), 71970u), vec2<bool>(true, global0.b.x));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.xwx, vec3<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_0.x, 24u)], 1u), 4294967295u >> (1u % 32u), 1u)), ~_wgslsmith_mult_vec3_u32(u_input.b.yzy, ~u_input.b.yyy)), 1u);
    return Struct_2(~((u_input.b.zw >> (vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)]) % vec2<u32>(32u))) | ~(var_0.zy | var_0.xz)), select(vec2<bool>(global0.b.x, global0.b.x), func_3(), true));
}

fn func_1() -> vec4<f32> {
    global2 = array<u32, 24>();
    global3 = -64023i;
    let var_0 = func_5(vec2<i32>(_wgslsmith_add_i32(func_4(4605i, func_2(Struct_2(vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(global0.b.x, true)), Struct_1(u_input.b.x, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false)))), ~u_input.c.x), u_input.c.x), countOneBits(63490u));
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xzx, firstLeadingBit(-vec3<i32>(u_input.a.x, u_input.c.x, -2147483647i))), countOneBits(u_input.a.zww));
    let var_2 = ~_wgslsmith_div_vec3_i32(~vec3<i32>(-u_input.a.x, var_1.x, u_input.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(select(u_input.c.x, u_input.a.x, true), var_1.x, var_1.x), u_input.a.zzz));
    return vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(490f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-823f, -516f)), -738f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f + 1012f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f), -209f), _wgslsmith_f_op_f32(-1157f * 1f));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = arg_0.b.xw;
    var var_1 = reverseBits(vec4<u32>(_wgslsmith_add_u32(20836u, arg_0.a), u_input.b.x, u_input.b.x, func_5(-vec2<i32>(1i, 1i), _wgslsmith_dot_vec3_u32(u_input.b.yxw, u_input.b.xzz)).a.x));
    var var_2 = Struct_1(abs(4294967295u), arg_0.b);
    let var_3 = ~(~var_1.wwx ^ ~(_wgslsmith_mod_vec3_u32(vec3<u32>(100898u, 4294967295u, arg_0.a), u_input.b.yyw) ^ vec3<u32>(20018u, 4294967295u, 4294967295u)));
    let var_4 = _wgslsmith_div_i32(reverseBits(firstTrailingBit(u_input.a.x)), countOneBits(_wgslsmith_mult_i32(-8523i, 0i)));
    return var_2.a;
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global3 = 0i;
    let var_0 = vec2<f32>(_wgslsmith_div_f32(1392f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1138f - -489f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-199f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1273f, 845f, any(vec4<bool>(global0.b.x, false, global0.b.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) * _wgslsmith_f_op_f32(step(-2001f, 1023f))), func_2(Struct_2(arg_1.a, vec2<bool>(arg_1.b.x, arg_1.b.x)), func_2(Struct_2(u_input.b.xy, vec2<bool>(global0.b.x, arg_1.b.x)), Struct_1(arg_2.a.x, vec4<bool>(arg_1.b.x, false, false, true)))).b.x)))));
    var var_1 = ~firstTrailingBit(func_6(func_2(arg_2, Struct_1(49794u, vec4<bool>(true, true, arg_2.b.x, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-338f, -367f, var_0.x, -1143f) * vec4<f32>(var_0.x, 1525f, -422f, var_0.x)), vec4<f32>(1000f, 649f, var_0.x, -1000f))));
    global0 = arg_1;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1f), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.x, 1000f)), -303f)));
    return Struct_1(~func_5(~vec2<i32>(-2199i, -2147483647i), _wgslsmith_add_u32(0u, 11053u)).a.x, !vec4<bool>(any(!vec4<bool>(arg_2.b.x, arg_2.b.x, true, true)), func_2(func_5(vec2<i32>(2147483647i, 0i), u_input.b.x), func_2(arg_1, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], vec4<bool>(global0.b.x, true, false, false)))).b.x, func_2(func_5(u_input.a.xw, 27747u), Struct_1(32596u, vec4<bool>(true, arg_2.b.x, true, global0.b.x))).b.x, arg_2.b.x));
}

fn func_8(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(u_input.b.zx, !(!func_7(~vec3<u32>(29438u, 96806u, global0.a.x), func_5(u_input.c, 72819u), Struct_2(vec2<u32>(4294967295u, arg_0), vec2<bool>(true, global0.b.x))).b.wx));
    var_0 = Struct_2(abs(var_0.a), vec2<bool>(global0.b.x, true));
    var var_1 = func_5(u_input.a.xx, ~(~(~20278u)));
    var var_2 = _wgslsmith_div_f32(649f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1185f, 527f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f) * _wgslsmith_div_f32(-1382f, 1000f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1808f, -621f), vec2<f32>(1787f, 2042f), var_0.b)), vec2<f32>(-300f, 418f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1117f, -138f) + vec2<f32>(1000f, -174f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-862f, 155f), vec2<f32>(-756f, -149f))))));
    return Struct_2(u_input.b.wx >> (u_input.b.xz % vec2<u32>(32u)), func_2(func_5(firstTrailingBit(vec2<i32>(u_input.a.x, 2585i)) & u_input.a.zz, 4294967295u), arg_2).b.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.xx;
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    global0 = func_8(u_input.b.x, ~23207u, func_7(vec3<u32>(u_input.b.x, ~1u, func_6(Struct_1(51070u, vec4<bool>(global0.b.x, false, false, false)), _wgslsmith_f_op_vec4_f32(func_1()))), Struct_2(~(u_input.b.yy >> (vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(global0.a.x, 24u)]) % vec2<u32>(32u))), select(select(vec2<bool>(true, false), vec2<bool>(global0.b.x, global0.b.x), global0.b), vec2<bool>(false, global0.b.x), global0.b.x)), Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.a.x, global0.a.x), 24u)], 26540u), vec2<bool>(true, global0.b.x))));
    global1 = array<vec3<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(firstLeadingBit(1i), -33164i, u_input.a.x, firstLeadingBit(u_input.a.x)), _wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(var_0.x, -1i, -2147483647i, u_input.a.x)), -u_input.a, true), abs(~vec4<i32>(8088i, -43277i, u_input.c.x, 0i)))));
}

