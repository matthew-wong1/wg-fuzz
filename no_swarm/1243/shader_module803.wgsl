struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(22287u, 2147483647i), Struct_3(4294967295u, -48596i), Struct_3(4294967295u, i32(-2147483648)), Struct_3(19277u, 20665i), Struct_3(0u, -49i), Struct_3(73626u, 63206i), Struct_3(4294967295u, i32(-2147483648)), Struct_3(4294967295u, i32(-2147483648)));

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 32>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global4: vec3<i32> = vec3<i32>(-19819i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: u32) -> i32 {
    global3 = vec4<bool>(-((i32(-1i) * -47919i) >> (~u_input.a.x % 32u)) > (2147483647i & global4.x), all(!vec3<bool>(global1.x, all(vec4<bool>(true, global1.x, global3.x, global1.x)), select(global3.x, global1.x, global3.x))), global1.x, all(vec2<bool>(global1.x, true)));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(f32(-1f) * -501f))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), 462f)) - _wgslsmith_div_f32(183f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1957f, 2702f)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-2479f));
    let var_2 = var_1;
    let var_3 = global3.x;
    return 0i;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<bool>) -> i32 {
    global1 = select(vec4<bool>(global1.x, !all(!vec2<bool>(arg_2.x, false)), true, _wgslsmith_f_op_f32(ceil(1000f)) < 719f), vec4<bool>(true, _wgslsmith_mod_i32(i32(-1i) * -1i, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]) <= max(_wgslsmith_add_i32(1980i, -2147483647i), global2[_wgslsmith_index_u32(~arg_0.a, 32u)]), all(!global1.xzy) || all(select(global1.ywy, global1.zwx, global1.wzy)), -countOneBits(arg_1.x) != _wgslsmith_div_i32(~arg_1.x, 2147483647i)), true);
    var var_0 = vec4<bool>((firstLeadingBit(-68375i) >> (arg_0.a % 32u)) < _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(arg_1.x, 2147483647i, global2[_wgslsmith_index_u32(arg_0.a, 32u)], 1i)), -vec4<i32>(arg_0.b, arg_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i), -1i <= arg_0.b), firstTrailingBit(abs(vec4<i32>(global4.x, arg_0.b, -1i, global2[_wgslsmith_index_u32(53982u, 32u)])))), global3.x, any(!select(select(vec4<bool>(arg_2.x, false, true, arg_2.x), vec4<bool>(true, global3.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, true)), vec4<bool>(arg_2.x, true, global1.x, true), true)), arg_0.b > max(_wgslsmith_sub_i32(-2147483647i, ~global2[_wgslsmith_index_u32(1u, 32u)]), ~_wgslsmith_mod_i32(arg_0.b, arg_1.x)));
    var var_1 = Struct_4(Struct_3(~firstLeadingBit(_wgslsmith_sub_u32(arg_0.a, 1u)), ~(-33608i) ^ _wgslsmith_clamp_i32(~2147483647i, -global4.x, 27751i)), vec3<i32>(arg_0.b, ~(-34194i), ~global4.x), vec3<bool>(true, false, 2147483647i != arg_1.x));
    var var_2 = arg_0.a;
    let var_3 = Struct_4(Struct_3(u_input.a.x, select(abs(_wgslsmith_mod_i32(1i, arg_0.b)), 2147483647i, all(select(vec4<bool>(var_1.c.x, true, global1.x, true), vec4<bool>(arg_2.x, global1.x, true, var_1.c.x), global3.x)))), firstLeadingBit(select(-vec3<i32>(global2[_wgslsmith_index_u32(var_1.a.a, 32u)], global4.x, var_1.a.b), var_1.b, !arg_2.x)), global3.wxx);
    return global4.x ^ arg_0.b;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_1.a.x, arg_1);
    global0 = array<Struct_3, 8>();
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(39218u, 8u)], vec3<i32>(func_3(Struct_3(reverseBits(40482u), ~global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), select(firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], 12537i, 1i)), vec3<i32>(2147483647i, -25835i, 0i) & vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -26161i, 4491i), !global3.wwx), global3.yy), 1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-2147483647i), i32(-1i) * -24929i), _wgslsmith_div_i32(-50055i, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), firstLeadingBit(1i) >> (1u % 32u))), vec3<bool>(true && (!global1.x && all(global1.wzz)), any(select(select(vec2<bool>(global3.x, false), global3.xy, vec2<bool>(arg_0.a, true)), select(global1.yy, vec2<bool>(global1.x, false), false), true)), ~min(8302u, 28062u) <= _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x)))));
    let var_2 = arg_0;
    var var_3 = vec3<i32>(~28867i, -28798i & -var_1.b.x, _wgslsmith_div_i32(global4.x, -1i));
    return _wgslsmith_sub_u32(u_input.a.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(abs(u_input.a.x), u_input.a.x, ~(~(~44706u)), u_input.a.x);
    let var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global4.x) >> (u_input.a.xz % vec2<u32>(32u)), max(vec2<i32>(-2545i, -2147483647i), global4.zy)), _wgslsmith_mod_vec2_i32(global4.yy, -vec2<i32>(3919i, global2[_wgslsmith_index_u32(var_0.x, 32u)])) | ~vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 32u)], 0i)) >= _wgslsmith_div_i32(3056i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(global4.x, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global4.x, global2[_wgslsmith_index_u32(70718u, 32u)]) ^ vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(1160u, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)])), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(global2[_wgslsmith_index_u32(85297u, 32u)], global4.x, global2[_wgslsmith_index_u32(var_0.x, 32u)], global4.x)), firstTrailingBit(vec4<i32>(-54974i, global2[_wgslsmith_index_u32(4294967295u, 32u)], 0i, 0i)))));
    var var_2 = Struct_5(select(true, func_1(_wgslsmith_div_u32(0u, 4294967295u)) <= _wgslsmith_add_i32(global4.x, 2147483647i << (var_0.x % 32u)), false && global1.x));
    let var_3 = vec2<bool>(_wgslsmith_sub_u32(1u, ~func_2(Struct_5(false), Struct_1(vec4<f32>(-542f, -406f, 172f, -500f)))) >= countOneBits(4294967295u), select(false, var_1 && any(vec4<bool>(global1.x, true, true, false)), global1.x) && !(true || (-1i != global4.x)));
    var var_4 = ~1u;
    var_0 = vec4<u32>(_wgslsmith_add_u32(~var_0.x, 1u), 31585u, _wgslsmith_sub_u32(4294967295u, var_0.x), (u_input.a.x >> (~var_0.x % 32u)) >> (_wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, 0u), vec3<u32>(u_input.a.x, 1u, 33907u))), reverseBits(firstTrailingBit(vec3<u32>(0u, 0u, var_0.x)))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1197f, i32(-1i) * -42029i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(15670u, 32u)], global4.x), firstTrailingBit(~min(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(-12817i, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global4.x)))), -_wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global4.x, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, global4.x, -6436i, 34013i))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, global2[_wgslsmith_index_u32(11001u, 32u)]), vec2<i32>(global4.x, global2[_wgslsmith_index_u32(var_0.x, 32u)])), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global2[_wgslsmith_index_u32(14457u, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)], global4.x), vec4<i32>(global2[_wgslsmith_index_u32(14956u, 32u)], 25541i, 34554i, -1i)), global2[_wgslsmith_index_u32(4294967295u, 32u)] & global4.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, -1324f, 148f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, -1000f, 127f)))))));
}

