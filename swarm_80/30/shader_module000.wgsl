struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-465f, -412f);

var<private> global1: array<u32, 24>;

var<private> global2: array<Struct_1, 9>;

var<private> global3: i32;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_mult_u32(13928u, 10957u);
    global1 = array<u32, 24>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(arg_1) ^ 1u, ~(_wgslsmith_clamp_u32(4294967295u, arg_1, u_input.d.x) >> (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 24u)], u_input.b) % 32u)) >> (~28399u % 32u), 1u), 9u)];
    let var_2 = 284f;
    return var_1.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = vec3<i32>(-16495i, arg_2.x, _wgslsmith_mult_i32(-28466i, -16388i) >> (arg_3.e.x % 32u));
    var var_1 = firstTrailingBit(reverseBits(func_3(vec2<bool>(any(vec4<bool>(false, false, arg_0.x, false)), arg_0.x), min(abs(0u), u_input.d.x), _wgslsmith_f_op_f32(-arg_1.x))));
    var_0 = countOneBits(arg_2);
    var_1 = arg_3.b.x;
    var var_2 = vec3<bool>(arg_0.x, (arg_3.e.x != abs(arg_3.e.x)) || true, false);
    return vec3<bool>(~0i != _wgslsmith_dot_vec2_i32(max(-var_0.zx, _wgslsmith_add_vec2_i32(vec2<i32>(arg_3.b.x, arg_2.x), vec2<i32>(-36142i, 1i))), -(var_0.xz >> (arg_3.e.zy % vec2<u32>(32u)))), arg_3.c, var_2.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(floor(arg_0.xx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(440f, 510f)))))), vec3<i32>(_wgslsmith_div_i32(arg_1.b.x, ~_wgslsmith_mod_i32(-9560i, arg_2.b.x)), 0i, ~(~(8682i & arg_1.b.x))), _wgslsmith_f_op_f32(-global4.x) >= -592f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-982f - -2325f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(274f)) - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(global4.x, 829f)) - _wgslsmith_f_op_f32(-arg_2.a.x))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, arg_1.e.x, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), u_input.c.xww, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.c.x, 0u))) >> (arg_1.e % vec3<u32>(32u)));
    let var_1 = select(select(select(vec4<bool>(var_0.c, true, arg_1.c, true), select(!vec4<bool>(arg_1.c, var_0.c, true, false), !vec4<bool>(var_0.c, arg_2.c, false, false), select(vec4<bool>(arg_2.c, var_0.c, var_0.c, var_0.c), vec4<bool>(true, false, arg_2.c, var_0.c), vec4<bool>(arg_2.c, var_0.c, var_0.c, arg_2.c))), true), !vec4<bool>(all(vec2<bool>(true, false)), true, true, false), !(!vec4<bool>(true, var_0.c, true, arg_2.c))), !vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 24u)]), 24u)] != 0u, false, true, !(arg_1.b.x == -20063i)), !arg_2.c && arg_2.c);
    global0 = _wgslsmith_f_op_vec2_f32(select(arg_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)), var_1.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.xx), (arg_1.b << (abs(countOneBits(vec3<u32>(u_input.a.x, 0u, 42082u))) % vec3<u32>(32u))) & -var_0.b, false, global0.x, vec3<u32>(min(59056u, firstTrailingBit(arg_2.e.x)), u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.e.x, 24u)], 24u)]));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.d))))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(-605f - 1597f)))), vec3<i32>(~0i, var_2.b.x, -(i32(-1i) * -2147483647i)), false, var_0.a.x, u_input.d.www << ((arg_2.e >> (~vec3<u32>(global1[_wgslsmith_index_u32(0u, 24u)], arg_1.e.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return var_1.zyz;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    let var_0 = vec2<bool>(true, true);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1379f, global4.x, _wgslsmith_f_op_f32(501f * global4.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -155f, -970f)))))), Struct_1(global4.yx, select(-vec3<i32>(-2147483647i, -2147483647i, 17271i), arg_1.b, vec3<bool>(true, any(vec3<bool>(true, true, arg_1.c)), arg_1.c)), all(func_2(vec4<bool>(true, arg_1.c, arg_1.c, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, -258f, global4.x)), vec3<i32>(-9309i, arg_0, arg_0), Struct_1(arg_1.a, vec3<i32>(arg_1.b.x, arg_0, arg_1.b.x), false, global0.x, u_input.d.xzy))), _wgslsmith_f_op_f32(sign(arg_1.a.x)), arg_1.e), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(min(arg_1.e.x, countOneBits(reverseBits(11638u))), 24u)], 9u)]);
    let var_2 = true;
    global0 = _wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global0.x) * _wgslsmith_f_op_vec2_f32(sign(arg_1.a)))));
    var var_3 = _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.d.x, 66771u, arg_1.e.x, 4294967295u), ~u_input.c), ~(~(~vec4<u32>(47228u, 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.e.x, 24u)], 24u)])))) << (~26478u % 32u);
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1973f))), _wgslsmith_f_op_f32(-arg_0.a.x))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, global4.x), arg_2.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.d) * arg_2.a) * _wgslsmith_f_op_vec2_f32(round(global4.xx))))), _wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, 1917f))), arg_0.a))));
    var var_2 = arg_0;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), global0.x);
    global3 = -arg_3.b.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_div_f32(arg_0.d, -1000f)), _wgslsmith_f_op_f32(ceil(var_1.x)))), arg_0.b, true || all(!arg_1), -422f, vec3<u32>(~4294967295u, 13389u, arg_0.e.x >> (arg_0.e.x % 32u)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = arg_0.b;
    let var_1 = vec2<bool>(!(!(!arg_0.c)), true);
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -821f, _wgslsmith_f_op_f32(-2094f * -1000f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(195f, arg_0.a.x, 1155f) * vec3<f32>(275f, global4.x, -382f)))), func_2(select(vec4<bool>(false, arg_0.c, var_1.x, false), vec4<bool>(var_1.x, arg_0.c, true, true), true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2527f, 1202f, -746f))), ~arg_0.b, global2[_wgslsmith_index_u32(64761u >> (global1[_wgslsmith_index_u32(22381u, 24u)] % 32u), 9u)]))), vec3<f32>(_wgslsmith_div_f32(-1514f, func_5(arg_0, vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 24u)], 9u)], Struct_1(arg_0.a, arg_0.b, var_1.x, 1145f, vec3<u32>(arg_1.x, arg_0.e.x, 1u))).d), -648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global4.x)))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, global4.x, arg_0.d))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-738f, 585f, var_2.d, -412f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1166f, global4.x, 898f, 1000f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(var_2.d)), _wgslsmith_f_op_f32(-var_2.d), -1383f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x - -1403f), _wgslsmith_f_op_f32(arg_0.d + var_2.a.x))), _wgslsmith_f_op_f32(floor(global0.x)), arg_0.a.x, var_2.d)));
    return select(vec3<bool>(false, false, false), func_4(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(544f, var_2.d)), func_5(Struct_1(vec2<f32>(-579f, 514f), -var_2.b, !var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -1549f), abs(vec3<u32>(global1[_wgslsmith_index_u32(8108u, 24u)], var_2.e.x, var_2.e.x))), func_4(var_3.zxw, global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(13148u, 24u)], 9u)], Struct_1(vec2<f32>(-403f, global4.x), arg_0.b, true, -222f, vec3<u32>(arg_1.x, var_2.e.x, 4294967295u))), Struct_1(global4.xz, var_2.b, any(var_1), 1566f, ~var_2.e), global2[_wgslsmith_index_u32(min(15276u, global1[_wgslsmith_index_u32(4294967295u, 24u)]) & ~arg_1.x, 9u)]), func_5(func_5(func_5(Struct_1(vec2<f32>(global0.x, -1138f), var_2.b, false, 386f, arg_1.yyz), vec3<bool>(false, var_2.c, arg_0.c), global2[_wgslsmith_index_u32(arg_1.x, 9u)], global2[_wgslsmith_index_u32(6866u, 9u)]), func_4(vec3<f32>(-1597f, global0.x, -471f), arg_0, global2[_wgslsmith_index_u32(35137u, 9u)]), func_5(global2[_wgslsmith_index_u32(1u, 9u)], vec3<bool>(var_2.c, arg_0.c, false), global2[_wgslsmith_index_u32(var_2.e.x, 9u)], Struct_1(arg_0.a, var_2.b, true, -747f, vec3<u32>(var_2.e.x, 35661u, 4294967295u))), func_5(arg_0, vec3<bool>(false, true, false), Struct_1(var_3.yw, arg_0.b, arg_0.c, global0.x, vec3<u32>(0u, 1u, var_2.e.x)), Struct_1(vec2<f32>(128f, global4.x), vec3<i32>(arg_0.b.x, arg_0.b.x, -73959i), false, var_2.d, vec3<u32>(var_2.e.x, 67388u, u_input.d.x)))), !vec3<bool>(var_2.c, var_2.c, false), arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, arg_0.d)), func_5(Struct_1(var_2.a, vec3<i32>(var_2.b.x, -19732i, -1i), arg_0.c, var_2.a.x, var_2.e), vec3<bool>(true, true, arg_0.c), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]).b, all(vec4<bool>(arg_0.c, var_2.c, true, var_2.c)), -1908f, ~u_input.d.wzx))), vec3<bool>(var_1.x, var_1.x, all(vec3<bool>(var_2.c, var_0.x < 20729i, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 9>();
    let var_0 = select(func_6(func_5(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(29563u, 24u)], 9u)], vec3<bool>(true, func_1(233i, global2[_wgslsmith_index_u32(u_input.d.x, 9u)], vec3<i32>(-51155i, -20559i, -10983i)), true), Struct_1(_wgslsmith_f_op_vec2_f32(-global4.xz), -vec3<i32>(1i, 11276i, 2147483647i), any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1118f), ~vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(select(global4.yx, global4.yz, true)), vec3<i32>(-25888i, 0i, 36797i), any(vec2<bool>(true, true)), global4.x, ~vec3<u32>(1u, 52976u, 0u))), vec4<u32>(58211u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], u_input.b, 86322u), 24u)], _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u)), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(5194u, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30306u, 24u)], 24u)])) ^ abs(vec4<u32>(global1[_wgslsmith_index_u32(1u, 24u)], 27910u, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 0u) | vec4<u32>(u_input.a.x, 37645u, global1[_wgslsmith_index_u32(1u, 24u)], 69120u))), func_6(global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c), true);
    var var_1 = u_input.c.x <= select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(countOneBits(u_input.d.wzz), ~u_input.c.xwy)), 24u)], 24u)], ~reverseBits(select(global1[_wgslsmith_index_u32(1u, 24u)], 10223u, var_0.x)), false);
    let var_2 = var_0.x;
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global4.x, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 2030f, 375f)))))));
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(~countOneBits(global1[_wgslsmith_index_u32(max(61198u, 12384u), 24u)]))), 9u)];
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f * var_3.d) * 450f)))), -_wgslsmith_sub_vec3_i32(-var_3.b, vec3<i32>(var_3.b.x, 6263i, 34446i)) & var_3.b, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)) * _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + var_3.d)))), ~vec3<u32>(~(var_3.e.x >> (u_input.a.x % 32u)), u_input.b, countOneBits(func_5(global2[_wgslsmith_index_u32(var_3.e.x, 9u)], var_0, Struct_1(var_3.a, var_3.b, var_2, var_3.d, u_input.a), Struct_1(vec2<f32>(-520f, -580f), vec3<i32>(2110i, 2147483647i, 44515i), true, -1697f, u_input.a)).e.x)));
    global2 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global4.zx, var_3.a) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-562f, -1000f) * -760f))), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-36235i, -22625i), vec2<i32>(var_3.b.x, var_4.b.x) | vec2<i32>(var_3.b.x, -1i)), var_4.b.x), global4.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, var_3.d, -1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, global4.x, 542f)) * vec3<f32>(1000f, global0.x, 633f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, global0.x, -1175f), vec3<f32>(global0.x, global4.x, -239f)) * vec3<f32>(1025f, var_3.a.x, 918f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_4.a.x, -587f) - vec3<f32>(global0.x, global0.x, -779f))))));
}

