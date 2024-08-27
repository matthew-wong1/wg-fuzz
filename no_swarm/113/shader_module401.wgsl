struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(74277u, 4294967295u), true, false, vec3<bool>(false, false, false)), Struct_1(vec2<u32>(669u, 43016u), false, true, vec3<bool>(false, true, false)), Struct_1(vec2<u32>(4294967295u, 19671u), true, false, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(77463u, 2635u), false, true, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(134390u, 16315u), true, true, vec3<bool>(false, false, false)), Struct_1(vec2<u32>(18066u, 19052u), false, true, vec3<bool>(false, true, false)), Struct_1(vec2<u32>(4294967295u, 8305u), true, false, vec3<bool>(false, false, false)), Struct_1(vec2<u32>(4294967295u, 24495u), false, true, vec3<bool>(true, false, false)), Struct_1(vec2<u32>(59297u, 0u), false, true, vec3<bool>(false, true, false)), Struct_1(vec2<u32>(72192u, 4294967295u), true, true, vec3<bool>(false, false, false)), Struct_1(vec2<u32>(0u, 63823u), false, false, vec3<bool>(false, false, false)), Struct_1(vec2<u32>(13465u, 0u), true, false, vec3<bool>(false, false, true)), Struct_1(vec2<u32>(0u, 1u), false, false, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(0u, 8563u), true, true, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(4294967295u, 0u), false, true, vec3<bool>(true, true, false)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> bool {
    let var_0 = vec2<u32>(1u, _wgslsmith_div_u32(100565u, countOneBits(_wgslsmith_add_u32(2390u, 60523u)))) ^ (select(~select(vec2<u32>(4294967295u, 22303u), vec2<u32>(43663u, 4294967295u), vec2<bool>(false, true)), vec2<u32>(36591u, _wgslsmith_mult_u32(1290u, 30574u)), vec2<bool>(true, true)) & (firstLeadingBit(max(vec2<u32>(25427u, 0u), vec2<u32>(32286u, 1u))) & vec2<u32>(51316u, _wgslsmith_dot_vec2_u32(vec2<u32>(71900u, 2740u), vec2<u32>(4294967295u, 1u)))));
    var var_1 = _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 22u)]), arg_1.x, -33572i)), _wgslsmith_div_i32(reverseBits(29603i), i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.x, 0i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(5582i, -1i, global0[_wgslsmith_index_u32(var_0.x, 22u)]), vec3<i32>(-1i, 1i, 1i))) >> (3375u % 32u)));
    var var_2 = 1u;
    let var_3 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, ~(~var_0.x)), 101140u);
    var var_4 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~reverseBits(51622u), ~(~4294967295u)), vec2<u32>(var_0.x, ~_wgslsmith_add_u32(var_3, 53344u))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), false), true)), !any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec3<bool> {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(arg_0.a.x, 7786u, 0u, arg_0.a.x)), ~countOneBits(~vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, 0u)), _wgslsmith_add_vec4_u32(abs(max(vec4<u32>(4294967295u, 72844u, arg_0.a.x, 109239u), vec4<u32>(arg_0.a.x, 4294967295u, 0u, 1u))), vec4<u32>(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x), max(arg_0.a.x, arg_0.a.x), arg_0.a.x, 16497u)));
    return arg_0.d;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    let var_0 = !select(func_4(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(9575u, arg_0)), any(vec2<bool>(true, false)), func_3(0i, vec2<i32>(u_input.a, -1i), vec2<i32>(0i, -17890i)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), -reverseBits(vec4<i32>(29753i, global0[_wgslsmith_index_u32(arg_0, 22u)], u_input.a, 1i)), (i32(-1i) * -2147483647i) & _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(50525u, 22u)], u_input.a, -1i), vec3<i32>(global0[_wgslsmith_index_u32(78935u, 22u)], u_input.a, global0[_wgslsmith_index_u32(0u, 22u)]))), !vec3<bool>(true, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, false, false, false))), !(!func_4(global1[_wgslsmith_index_u32(arg_0, 15u)], vec4<i32>(0i, -1i, -58341i, u_input.a), u_input.a)));
    var var_1 = global1[_wgslsmith_index_u32(73396u, 15u)];
    var_1 = Struct_1(abs(var_1.a), !(true && var_0.x), var_1.b, vec3<bool>(true, any(vec2<bool>(false, var_0.x)), true));
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    return _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(13270u, 79816u, arg_0, 1u), vec4<u32>(arg_0, 4294967295u, 20307u, 49561u)), ~(~vec4<u32>(arg_0, 0u, var_1.a.x, 25771u))), vec4<u32>(_wgslsmith_mult_u32(~arg_0, var_1.a.x) & 13174u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, countOneBits(0u)), arg_0, 28776u), var_1.a.x, ~_wgslsmith_sub_u32(arg_0, arg_0) | min(arg_0, var_1.a.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(select(vec2<u32>(26061u, 1316u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false)), ~vec2<u32>(0u, 0u)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))), ~vec2<u32>(1u, 75844u)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 10136u, 1u, 45464u), func_2(0u)), ~vec4<u32>(53808u, 0u, 43092u, 29473u))), 15u)];
    global1 = array<Struct_1, 15>();
    return Struct_1(select(~firstTrailingBit(vec2<u32>(0u, 59830u)), select(var_0.a, reverseBits(vec2<u32>(4294967295u, var_0.a.x)) ^ ~vec2<u32>(var_0.a.x, var_0.a.x), !var_0.d.xz), vec2<bool>(any(!vec4<bool>(true, false, var_0.b, var_0.b)), var_0.c)), func_3(_wgslsmith_clamp_i32(~(-1i), abs(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(68680u, 22u)]))), vec2<i32>(-24925i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(38781u, 22u)], 0i) >> (vec2<u32>(var_0.a.x, 50458u) % vec2<u32>(32u))) | true, !select(var_0.c, true, select(true, true, any(var_0.d))), func_4(Struct_1(var_0.a, var_0.d.x != func_3(u_input.a, vec2<i32>(73309i, -63530i), vec2<i32>(13308i, global0[_wgslsmith_index_u32(var_0.a.x, 22u)])), false, func_4(Struct_1(var_0.a, true, false, var_0.d), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, 39846i, global0[_wgslsmith_index_u32(var_0.a.x, 22u)]), vec4<i32>(global0[_wgslsmith_index_u32(14209u, 22u)], u_input.a, 0i, global0[_wgslsmith_index_u32(var_0.a.x, 22u)])), -4426i)), vec4<i32>(-2147483647i, (global0[_wgslsmith_index_u32(var_0.a.x, 22u)] << (var_0.a.x % 32u)) ^ global0[_wgslsmith_index_u32(~var_0.a.x, 22u)], reverseBits(_wgslsmith_sub_i32(u_input.a, 2147483647i)), global0[_wgslsmith_index_u32(var_0.a.x, 22u)] ^ min(-1i, u_input.a)), u_input.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(func_2(1u).wy, arg_0.c, !any(arg_1.d), arg_0.d);
    var_0 = func_1();
    let var_1 = -(~(~((vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 22u)], 0i) >> (vec3<u32>(arg_1.a.x, 4294967295u, 4294967295u) % vec3<u32>(32u))) << ((vec3<u32>(30341u, arg_1.a.x, 0u) >> (vec3<u32>(arg_0.a.x, var_0.a.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_2 = vec4<f32>(-670f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f) - 303f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f))), _wgslsmith_f_op_f32(f32(-1f) * -578f));
    let var_3 = vec3<u32>(var_0.a.x, 1u, ~abs(52569u));
    return select(arg_1.a, _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(14478u, 0u)) << (abs(vec2<u32>(var_3.x, 0u)) % vec2<u32>(32u)), abs(vec2<u32>(var_0.a.x, 11176u)), var_3.yz), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33283u, 0u, 0u), vec4<u32>(35790u, 36779u, 47235u, 29653u)), _wgslsmith_div_u32(97727u, 3764u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~40315u, 4808u), func_5(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(17124u, 25221u), 15u)], func_1())));
    let var_1 = Struct_1((vec2<u32>(~var_0, var_0) & ~vec2<u32>(var_0, var_0)) | ~(~(~vec2<u32>(var_0, var_0))), func_4(func_1(), abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(var_0, 22u)], u_input.a, u_input.a, 1i), ~vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a))), -1i << (~var_0 % 32u)).x, true, vec3<bool>(false, false, all(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(~vec3<u32>(4294967295u, var_0, 0u)), ~vec3<u32>(4294967295u, var_0, var_1.a.x) | vec3<u32>(var_0, var_0, var_0)), firstLeadingBit(vec3<u32>(var_0, var_1.a.x, var_0) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 33375u), vec3<u32>(var_0, var_1.a.x, 75719u)))), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(104504u, 1u, 4294967295u, var_1.a.x) ^ vec4<u32>(var_1.a.x, var_1.a.x, 0u, var_0)), min(select(~vec4<u32>(var_0, var_1.a.x, 14481u, 1u), vec4<u32>(var_0, var_1.a.x, 22796u, 0u), any(vec4<bool>(var_1.c, false, var_1.c, false))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(21449u, 68878u, var_1.a.x, var_0), vec4<u32>(var_1.a.x, 1u, var_1.a.x, 0u)), firstTrailingBit(vec4<u32>(var_0, var_1.a.x, 0u, var_0))))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f)), _wgslsmith_f_op_f32(floor(-1003f)));
    global0 = array<i32, 22>();
    global1 = array<Struct_1, 15>();
    let var_4 = var_1;
    var var_5 = false;
    let var_6 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(var_1.a.x, 22u)], -1940i, 172i) ^ vec4<i32>(-9422i, global0[_wgslsmith_index_u32(45316u, 22u)], global0[_wgslsmith_index_u32(var_4.a.x, 22u)], -54784i), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(1u, 22u)], 2147483647i, u_input.a, u_input.a))) ^ -max(vec4<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 22u)], 1i, u_input.a, -70i), vec4<i32>(-21397i, global0[_wgslsmith_index_u32(16210u, 22u)], global0[_wgslsmith_index_u32(87459u, 22u)], -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f + 820f)) * _wgslsmith_f_op_f32(floor(var_3.x))));
}

