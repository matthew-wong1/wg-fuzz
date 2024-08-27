struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, 1636f), Struct_1(true, 212f), Struct_1(false, 161f), Struct_1(true, 248f), Struct_1(false, -947f), Struct_1(true, -616f), Struct_1(false, -531f), Struct_1(true, 280f), Struct_1(false, 236f), Struct_1(true, -118f), Struct_1(true, -406f), Struct_1(true, 1195f), Struct_1(false, -493f));

var<private> global1: Struct_1;

var<private> global2: array<f32, 10>;

var<private> global3: array<i32, 22> = array<i32, 22>(6687i, 37663i, -29782i, -33174i, -24964i, -1i, 19956i, 1i, 8006i, i32(-2147483648), 2147483647i, -565i, -66698i, i32(-2147483648), 6713i, 1i, 16274i, 37707i, 46229i, 73179i, 1i, 0i);

var<private> global4: array<u32, 23>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = !(!(!select(!vec4<bool>(global1.a, true, false, global1.a), !vec4<bool>(global1.a, global1.a, false, false), vec4<bool>(true, global1.a, false, global1.a))));
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(arg_1.x, 22u)], 9962i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], 13861i, 2147483647i), vec3<i32>(51998i, 1i, global3[_wgslsmith_index_u32(arg_1.x, 22u)])), 2591i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-22398i, -1i), vec2<i32>(global3[_wgslsmith_index_u32(1u, 22u)], 1626i), vec2<i32>(-2147483647i, 18011i)), ~vec2<i32>(global3[_wgslsmith_index_u32(arg_0.x, 22u)], -71755i))), abs(vec4<i32>(-global3[_wgslsmith_index_u32(4294967295u, 22u)], -2090i, -17074i, -15126i)), -vec4<i32>(-2147483647i, -14421i, -37232i, _wgslsmith_div_i32(8561i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 23u)], 22u)]))), vec4<i32>(1i, -34033i, ~global3[_wgslsmith_index_u32(reverseBits(1u), 22u)], 2147483647i));
    global1 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_0.x, 10u)]))))));
    let var_2 = global0[_wgslsmith_index_u32(~u_input.b, 13u)];
    var_0 = select(vec4<bool>(!global1.a, true, true, global1.a), vec4<bool>(!select(true, true, var_0.x) & (false & !global1.a), false, all(select(vec3<bool>(var_0.x, false, false), var_0.wxw, var_0.ywy)), var_0.x || false), !global1.a || true);
    return vec3<u32>(u_input.b ^ abs(arg_1.x), u_input.a.x, _wgslsmith_mult_u32(arg_1.x, u_input.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>) -> bool {
    global4 = array<u32, 23>();
    global1 = Struct_1(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1327f, global2[_wgslsmith_index_u32(17908u, 10u)]), global2[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23804u, 23u)], 10u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b, 329f, -703f))) * vec3<f32>(730f, _wgslsmith_f_op_f32(-global1.b), arg_0.a.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-862f, global1.b, global2[_wgslsmith_index_u32(u_input.c.x, 10u)]) + vec3<f32>(global2[_wgslsmith_index_u32(1u, 10u)], 313f, -405f)))))));
    global1 = Struct_1(arg_1, -1268f);
    let var_1 = Struct_1(!arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u >> (firstLeadingBit(global4[_wgslsmith_index_u32(4294967295u, 23u)]) % 32u), 10u)]), global1.b)));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = !func_4(arg_0, true, func_3(~(~u_input.c), min(~vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 30878u), ~vec4<u32>(0u, global4[_wgslsmith_index_u32(4294967295u, 23u)], u_input.c.x, 4294967295u)), 1209f));
    global3 = array<i32, 22>();
    let var_1 = -486f;
    global3 = array<i32, 22>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-825f, 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-112f)), _wgslsmith_f_op_f32(step(var_1, 1044f))))));
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = arg_1;
    global1 = Struct_1(true, global1.b);
    global3 = array<i32, 22>();
    global2 = array<f32, 10>();
    var var_1 = arg_1.a;
    return arg_1;
}

fn func_1() -> Struct_2 {
    global2 = array<f32, 10>();
    global1 = global0[_wgslsmith_index_u32(29057u, 13u)];
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(26859u, 13u)]);
    let var_1 = ~35895u;
    let var_2 = min(~(vec2<i32>(-4580i, global3[_wgslsmith_index_u32(10322u, 22u)]) << (u_input.a.yx % vec2<u32>(32u))) << (u_input.c.yy % vec2<u32>(32u)), -select(countOneBits(vec2<i32>(19841i, global3[_wgslsmith_index_u32(u_input.a.x, 22u)])), vec2<i32>(global3[_wgslsmith_index_u32(var_1, 22u)], -6706i), !global1.a)) & ((abs(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], -20405i) << (u_input.c.xy % vec2<u32>(32u))) & vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(58357u, 23u)] << (u_input.c.x % 32u), 22u)])) & -(-vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], global3[_wgslsmith_index_u32(var_1, 22u)]) ^ (vec2<i32>(global3[_wgslsmith_index_u32(85214u, 22u)], -33971i) >> (u_input.c.xy % vec2<u32>(32u)))));
    return func_5(global1.a, func_2(var_0, Struct_1(!(var_2.x >= var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b))))), func_2(Struct_2(func_2(Struct_2(var_0.a), var_0.a).a), func_2(Struct_2(func_2(Struct_2(Struct_1(var_0.a.a, -476f)), global0[_wgslsmith_index_u32(56567u, 13u)]).a), Struct_1(!global1.a, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(57836u, 10u)])))).a), u_input.a);
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec4<u32>(7595u, global4[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(4294967295u, 23u)], 43841u), 23u)], _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(10676u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)])), 24285u), 23u)] ^ 1u, reverseBits(34178u), _wgslsmith_div_u32(4294967295u, 1u));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~(~u_input.c.x)), 13u)];
    let var_1 = Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(trunc(func_1().a.b)));
    global2 = array<f32, 10>();
    var var_2 = abs(firstTrailingBit(-(vec2<i32>(1i, 1i) | (vec2<i32>(1i, global3[_wgslsmith_index_u32(1u, 22u)]) | vec2<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 23u)], 22u)], -48731i)))));
    return Struct_1(!(!(func_4(Struct_2(Struct_1(false, -1844f)), true, vec3<u32>(var_0.x, 48404u, global4[_wgslsmith_index_u32(71258u, 23u)])) || true)), 606f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(-1093f + _wgslsmith_f_op_f32(min(976f, 1000f))))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-514f, global2[_wgslsmith_index_u32(u_input.b, 10u)])))) * vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 10u)]), _wgslsmith_f_op_f32(-global1.b))), vec2<f32>(1000f, func_6(-364f, func_1()).b)));
}

