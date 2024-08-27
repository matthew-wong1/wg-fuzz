struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 1182u, 32106u);

var<private> global2: Struct_1 = Struct_1(39766i, true, 1i, vec3<i32>(2147483647i, -1i, 2147483647i));

var<private> global3: f32;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(global2.c & global2.a, ~1i), global2.a >> (~14703u % 32u)), true, abs(_wgslsmith_mod_i32(global2.c, ~(-44898i))) ^ -23491i, global2.d);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f + -1106f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2115f, 1850f)), -478f))) - _wgslsmith_f_op_f32(trunc(-1000f)));
    global0 = array<u32, 9>();
    global2 = Struct_1(~43016i, all(vec3<bool>(any(vec3<bool>(true, global2.b, false)), global2.b, false)), -14913i, select(max(-(global2.d ^ var_0.d), vec3<i32>(firstLeadingBit(-1i), 13135i, var_0.c)), global2.d, select(vec3<bool>(false, var_0.b, true), vec3<bool>(true, true, true), any(vec2<bool>(global4.x, var_0.b)))));
    let var_1 = var_0;
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18382u, 9u)], 9u)], 1u), 9u)], global1.x, ~(~1u), _wgslsmith_dot_vec3_u32(global1.xyx, ~global1.xxx)), ~(~vec4<u32>(global1.x, 1u, global0[_wgslsmith_index_u32(global1.x, 9u)], 1u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 9u)], global1.x), countOneBits(vec4<u32>(59419u, u_input.a.x, 742u, 1u)), firstTrailingBit(vec4<u32>(94964u, global0[_wgslsmith_index_u32(1u, 9u)], u_input.a.x, 1u)))), ~(vec4<u32>(~1u, u_input.a.x, abs(20741u), global0[_wgslsmith_index_u32(~4294967295u, 9u)]) >> (vec4<u32>(abs(5583u), global0[_wgslsmith_index_u32(31356u, 9u)], 1u, min(1u, global1.x)) % vec4<u32>(32u))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(486f, -640f, 1071f) + vec3<f32>(256f, 2014f, -569f))))) * vec3<f32>(539f, -596f, 578f));
    let var_1 = vec3<bool>(!global4.x & all(select(select(vec2<bool>(global2.b, global4.x), vec2<bool>(false, global4.x), false), vec2<bool>(false, global4.x), -359f == var_0.x)), var_0.x > -929f, true);
    global0 = array<u32, 9>();
    global1 = ~(~func_3());
    var var_2 = false;
    return Struct_1(-global2.d.x, (_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(global2.d.x, -1i)), max(2147483647i, global2.a)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 49989u), reverseBits(vec2<u32>(28033u, u_input.a.x))) % 32u)) <= _wgslsmith_mult_i32(i32(-1i) * -44074i, 26327i), countOneBits(firstLeadingBit(global2.c)), ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, global2.d.x), vec2<i32>(global2.d.x, global2.d.x)), -1i, firstLeadingBit(global2.a)));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    global4 = !vec2<bool>(((global2.c > 2147483647i) | global4.x) && !(22422i < global2.d.x), global2.b);
    global2 = Struct_1(global2.a, global2.b, global2.a, vec3<i32>(~(-global2.c >> ((0u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)] % 32u)) % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, global2.c, -16473i, 19331i), vec4<i32>(-2147483647i, global2.d.x, 0i, 5960i)), vec4<i32>(0i, -63525i, global2.c, global2.d.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, global2.a, global2.c, global2.a), vec4<i32>(-28220i, global2.a, 12546i, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, -66322i, -2147483647i, -23281i), vec4<i32>(global2.d.x, global2.d.x, global2.a, 13891i)))), global2.a));
    let var_0 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(global2.d, -firstTrailingBit(vec3<i32>(global2.c, -43253i, global2.c)));
    global2 = func_2();
    global0 = array<u32, 9>();
    return -abs(var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_i32(-(vec3<i32>(-6098i, arg_2.d.x, arg_0.a) | arg_0.d), global2.d), true, i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, global2.c), _wgslsmith_mult_i32(1i, arg_2.d.x)), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, -7732i, -6211i, arg_2.a), vec4<i32>(global2.c, arg_2.c, arg_2.c, arg_0.d.x)), _wgslsmith_sub_i32(-arg_2.d.x, i32(-1i) * -21022i), 28911i));
    return vec2<bool>(!arg_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1), arg_1) != _wgslsmith_f_op_f32(max(187f, _wgslsmith_f_op_f32(arg_1 + -476f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global1.yw, global1.zw, !vec2<bool>(global2.b, false));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(926f - 2111f), 818f), vec2<f32>(_wgslsmith_f_op_f32(-288f - 483f), _wgslsmith_f_op_f32(818f - -1461f)))) + vec2<f32>(-737f, 524f));
    global4 = select(func_4(Struct_1(global2.a ^ func_1(var_1.x, 15755u), any(select(vec4<bool>(global2.b, global4.x, true, global2.b), vec4<bool>(global2.b, global2.b, global2.b, true), vec4<bool>(global4.x, global2.b, global2.b, global4.x))), 18017i, vec3<i32>(41042i, global2.a, -global2.a)), var_1.x, Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.d.yz, vec2<i32>(global2.d.x, global2.c), global2.d.yz), global2.d.yy), all(!vec3<bool>(global2.b, true, global2.b)), -abs(global2.c), ~global2.d)), !select(vec2<bool>(func_2().b, global2.b), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 9u)] > var_0.x, global2.b), func_4(Struct_1(global2.d.x, true, global2.a, global2.d), -187f, func_2())), select(vec2<bool>(!(!global2.b), 1f >= _wgslsmith_f_op_f32(min(var_1.x, 893f))), vec2<bool>(global2.b, any(!vec4<bool>(global4.x, global2.b, global4.x, false))), func_4(Struct_1(64412i ^ global2.a, 16855u >= u_input.a.x, _wgslsmith_dot_vec2_i32(global2.d.yy, global2.d.zy), -global2.d), -719f, Struct_1(~global2.c, 0i == global2.c, global2.d.x, vec3<i32>(global2.d.x, global2.a, global2.d.x) & global2.d))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1152f, 2693f, var_1.x, -340f) + vec4<f32>(-304f, var_1.x, -662f, 584f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, var_1.x, 1197f, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, 838f, 1433f, -623f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f * var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(-603f * var_1.x)), 1151f, _wgslsmith_div_f32(360f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(843f - -1000f), _wgslsmith_f_op_f32(-606f + -561f))))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~45241u);
}

