struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<Struct_1, 26>;

var<private> global4: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    global1 = global0.b.zz;
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.c, vec3<u32>(~(541u & u_input.a.x), 2678u, max(4294967295u, ~67257u))), ~u_input.a.xxz), 26u)];
    return global2[_wgslsmith_index_u32(u_input.a.x, 19u)];
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(trunc(arg_0.c)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(-249f, -486f)), _wgslsmith_f_op_f32(f32(-1f) * -650f), _wgslsmith_f_op_f32(min(arg_0.c, 2352f)), _wgslsmith_f_op_f32(f32(-1f) * -142f)))), -global0.b.x).b.x);
    var var_1 = Struct_1(arg_0.a, (vec4<i32>(39290i, arg_0.b.x & 1i, 22336i, select(-2147483647i, arg_0.b.x, true)) >> (vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), u_input.a.x, _wgslsmith_mult_u32(u_input.d, 89627u), ~24207u) % vec4<u32>(32u))) ^ func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) * vec2<f32>(arg_0.c, -567f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, -676f, 526f, arg_0.c) * vec4<f32>(-889f, 801f, arg_0.c, 415f))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global4.xz, global0.b.xw), vec2<i32>(var_0, global0.b.x))).b, arg_0.c);
    var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-629f, 189f), -185f)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) - vec2<f32>(arg_0.c, -842f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1143f, 324f, var_1.c, -1000f)), _wgslsmith_dot_vec2_i32(var_1.b.yx, arg_0.b.yw)).c)), -602f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(vec2<f32>(717f, 423f), vec4<f32>(249f, 1118f, var_1.c, global0.c), -5609i).c) - global0.c))));
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))) >= arg_0.c, true);
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = !((all(vec2<bool>(true, true)) || (any(vec3<bool>(false, true, false)) && true)) & true);
    let var_1 = func_3(func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(415f)), _wgslsmith_f_op_f32(arg_2.x - 744f)), 938f), vec4<f32>(-532f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(sign(arg_2.x))), global0.c, global0.c), 0i));
    global2 = array<Struct_1, 19>();
    let var_2 = Struct_1(~min(var_1.a, global4.x), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_2.x)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_2.zy * vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    return Struct_1(min(firstLeadingBit(var_1.a), reverseBits(func_3(func_3(Struct_1(-1i, var_1.b, var_3.x))).b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b.x, 1i, i32(-1i) * -8581i, select(-37669i, global0.a, var_0 && false)), vec4<i32>(1i, -1i, func_3(var_1).b.x, 1i), var_2.b >> (vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(0u, 17879u, u_input.d), 4294967295u, _wgslsmith_add_u32(25071u, 0u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(var_3.x - arg_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c - 624f), _wgslsmith_f_op_f32(-global0.c)))), Struct_1(_wgslsmith_add_i32(global0.a, 0i), global0.b, _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))), 250f, _wgslsmith_f_op_f32(-global0.c))));
    let var_1 = ~_wgslsmith_mod_u32(~firstTrailingBit(u_input.d), 4294967295u);
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(331f))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(378f, -437f), vec2<f32>(var_0.c, 491f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(915f, var_0.c) + vec2<f32>(-725f, 728f)), true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c, 573f, -2190f, 134f))), vec4<f32>(-419f, -309f, 101f, var_0.c))))), _wgslsmith_mult_i32(13686i, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, global0.c, var_0.c, 446f) + vec4<f32>(214f, -1083f, 2349f, 878f)))));
    var var_2 = global3[_wgslsmith_index_u32(~1u, 26u)];
    var var_3 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(961f * global0.c), 219f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(918f, global0.c))) * vec2<f32>(global0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -468f), -410f, global0.c)), countOneBits(-20070i)).a, -vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-43338i, global4.x), ~global4.x, _wgslsmith_mult_i32(var_2.a, global0.a)) | ((~global0.b << (vec4<u32>(var_1, u_input.c.x, 0u, 17923u) % vec4<u32>(32u))) & vec4<i32>(firstLeadingBit(global4.x), u_input.b ^ 0i, var_0.b.x & -2147483647i, _wgslsmith_sub_i32(-2585i, -925i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_3(func_2(vec2<f32>(var_2.c, 471f), vec4<f32>(165f, global0.c, global0.c, var_2.c), -2147483647i)).c)));
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_sub_i32(-global4.x ^ ~u_input.b, _wgslsmith_add_i32(var_3.b.x, var_3.a))), ~(select(var_0.b, vec4<i32>(u_input.b, 1i, -2147483647i, 9018i), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))) & ~vec4<i32>(u_input.b, global0.b.x, -2147483647i, global4.x)), global0.c);
    var var_5 = Struct_1(countOneBits(-16304i ^ global0.b.x), var_2.b, 777f);
    var var_6 = Struct_1(global4.x, func_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.c + 769f))), func_3(func_2(vec2<f32>(var_4.c, 1000f), vec4<f32>(-858f, 385f, -865f, var_2.c), 26513i)).c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2033f, 192f, global0.c, 1771f), _wgslsmith_div_vec4_f32(vec4<f32>(866f, var_5.c, var_0.c, global0.c), vec4<f32>(-161f, var_2.c, 2095f, -731f))))), -1i).b, 497f);
    let var_7 = global2[_wgslsmith_index_u32(var_1, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.zx ^ vec2<i32>(func_1(_wgslsmith_f_op_f32(-var_7.c), var_4, _wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, var_0.c, var_5.c, var_0.c))).a, firstTrailingBit(_wgslsmith_mod_i32(0i, -17808i))), vec3<u32>(var_1 >> (u_input.c.x % 32u), abs(u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, ~36432u, ~u_input.a.x), u_input.c)), max(vec4<i32>(0i, var_0.b.x, -2147483647i, var_0.b.x), var_7.b) >> (~(~(~u_input.a)) % vec4<u32>(32u)), ~max(reverseBits(max(vec2<i32>(-39249i, -10079i), vec2<i32>(var_2.b.x, var_6.b.x))), min(var_7.b.yz, vec2<i32>(u_input.b, var_7.a) >> (vec2<u32>(40428u, u_input.d) % vec2<u32>(32u)))));
}

