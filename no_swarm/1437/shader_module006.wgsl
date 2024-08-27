struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true, 1332f, vec2<i32>(0i, -1i));

var<private> global2: array<Struct_2, 5>;

var<private> global3: f32 = 1172f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(global1.c, u_input.a.xz);
    var var_1 = Struct_2(max(-(-u_input.a ^ select(vec4<i32>(global0.c.x, 2147483647i, u_input.a.x, arg_0), u_input.a, true)), -select(_wgslsmith_add_vec4_i32(vec4<i32>(global0.c.x, 5402i, arg_0, -1i), u_input.a), ~vec4<i32>(2147483647i, arg_0, -25177i, 20774i), u_input.a.x < -16275i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(631f, -466f) * vec2<f32>(global0.b, -1000f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.b, global0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -1143f) + vec2<f32>(global1.b, global1.b)))))))));
    let var_2 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -944f)))), vec3<bool>(false, global1.a, false), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(702f)), -233f))))), vec3<u32>(1u, 1u, 1u));
    let var_3 = max(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(global0.c.x, 2147483647i), u_input.a.xw), _wgslsmith_clamp_vec2_i32(-(~u_input.a.wz), vec2<i32>(arg_0 & u_input.a.x, ~arg_0), _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0, arg_0), ~vec2<i32>(var_1.a.x, -2147483647i), abs(global0.c))), global1.c), select(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -12499i), vec2<i32>(global1.c.x, arg_0)), u_input.a.wy, !(!select(vec2<bool>(true, false), var_2.c.yz, vec2<bool>(true, var_2.a)))));
    let var_4 = Struct_1(var_2.c.x, var_2.d, vec2<i32>(_wgslsmith_add_i32(abs(23608i), -29341i), -2147483647i));
    return select(vec2<bool>(any(var_2.c), var_2.a), !(!(!(!vec2<bool>(global1.a, false)))), var_2.c.zx);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    let var_0 = arg_2;
    global1 = Struct_1(any(vec2<bool>(true, ~arg_0.x >= firstTrailingBit(arg_0.x))), arg_1, _wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.a.zy, global0.c, vec2<i32>(0i, u_input.a.x)) << (~vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u)), ~abs(vec2<i32>(u_input.a.x, arg_2.a.x))));
    var var_1 = 22767u;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(2543f, _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(max(arg_2.b.x, 259f))), true)), _wgslsmith_f_op_f32(-global1.b))));
    let var_2 = -2147483647i;
    return !select(vec2<bool>(true, true), func_3(1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(435f))))), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = select(arg_1.xx, countOneBits(arg_1.yx), func_2(countOneBits(~vec3<u32>(4294967295u, 149541u, 49304u)), _wgslsmith_f_op_f32(select(global0.b, -1000f, !global0.a)), Struct_2(abs(vec4<i32>(-22004i, 4854i, global1.c.x, 17468i)), _wgslsmith_f_op_vec2_f32(-arg_3)), ~abs(1u))) & -reverseBits(vec2<i32>(arg_2, reverseBits(2147483647i)));
    var var_1 = any(select(select(vec4<bool>(arg_0.x, arg_0.x, global0.c.x > global0.c.x, true), vec4<bool>(true, func_3(-5060i, 257f).x, true, false), !select(vec4<bool>(true, global1.a, false, global1.a), vec4<bool>(false, false, true, true), vec4<bool>(global0.a, true, true, false))), vec4<bool>(arg_0.x, false, true, global0.a), !vec4<bool>(false, true, global1.a, !global1.a)));
    var var_2 = Struct_3(global0.a && false, global0.b, !(!select(vec3<bool>(global0.a, false, arg_0.x), vec3<bool>(global0.a, global1.a, global1.a), !vec3<bool>(global0.a, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(117f, 664f))), _wgslsmith_f_op_f32(exp2(global0.b)))), ~(~(~(~vec3<u32>(0u, 4294967295u, 12797u)))));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, -1132f, var_2.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-285f, 1593f, global1.b), vec3<f32>(1459f, 185f, 143f), false)), !var_2.c)))));
    return Struct_3(false, -1000f, vec3<bool>(3388i >= _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_2, 2147483647i, -1i), u_input.a, u_input.a)), select(var_3, all(select(var_2.c.yy, vec2<bool>(false, true), true)), true), false), -739f, vec3<u32>(~4294967295u, 82902u, _wgslsmith_mult_u32(4294967295u, var_2.e.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = 74022u;
    let var_1 = -719f;
    var var_2 = func_4(!(!func_2(vec3<u32>(arg_1, arg_1, arg_1), 717f, global2[_wgslsmith_index_u32(arg_1, 5u)], 67002u)), u_input.a.yyw, global0.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, _wgslsmith_f_op_f32(min(global1.b, global1.b)))));
    var_0 = arg_1;
    var var_3 = -53166i;
    return global2[_wgslsmith_index_u32(~1u, 5u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec3<bool>(u_input.a.x >= ~_wgslsmith_mult_i32(-38344i, 15305i), true || !(!(68312u > arg_1.e.x)), _wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1351f + global1.b)), !(!arg_1.c.x))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(arg_1.c.zz, u_input.a.wzz, u_input.a.x, arg_0.b).d * _wgslsmith_f_op_f32(global1.b - global0.b)), arg_0.b.x)));
    global0 = Struct_1(!func_3(_wgslsmith_add_i32(global0.c.x, ~arg_0.a.x), arg_0.b.x).x, -376f, global1.c);
    global3 = _wgslsmith_f_op_f32(-776f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_3.b, arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1415f, arg_0.b.x))), !arg_2)));
    global0 = arg_3;
    let var_1 = ~vec2<u32>(reverseBits(_wgslsmith_mod_u32(0u, 12591u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.e.x, arg_1.e.x, 0u, 0u), vec4<u32>(arg_1.e.x, 44921u, arg_1.e.x, 1u)), ~vec4<u32>(arg_1.e.x, arg_1.e.x, arg_1.e.x, arg_1.e.x))) ^ select(arg_1.e.yy, ~arg_1.e.yz, false);
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = ~0u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-389f)) * -154f);
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(52992u, ~(~arg_1), arg_1), ~(~abs(~vec3<u32>(0u, 4294967295u, arg_1))));
    var var_3 = global1.a;
    var var_4 = Struct_3(any(select(!(!vec2<bool>(global0.a, true)), !vec2<bool>(global1.a, global0.a), vec2<bool>(false, true))), _wgslsmith_f_op_f32(func_5(func_5(global2[_wgslsmith_index_u32(1621u, 5u)], Struct_3(false, -982f, vec3<bool>(true, global1.a, false), -590f, vec3<u32>(arg_1, var_2.x, var_2.x)), true, Struct_1(false, 315f, arg_0.a.wz)), Struct_3(true, _wgslsmith_f_op_f32(trunc(1000f)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(step(-544f, 768f)), _wgslsmith_sub_vec3_u32(vec3<u32>(110312u, var_2.x, 0u), vec3<u32>(10602u, 49889u, 26126u))), true, Struct_1(62787u > arg_1, func_1(u_input.a, 4294967295u).b.x, ~u_input.a.yz)).b.x + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-642f * global1.b)))), vec3<bool>((-2240f <= _wgslsmith_f_op_f32(-global1.b)) != ((false && global0.a) && true), !global0.a, global1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(296f + 361f))), global0.b)), min(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(var_2.x, 4294967295u, 3143u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 90313u, var_2.x), vec3<u32>(33038u, 6404u, var_2.x)), any(vec3<bool>(true, false, true))) ^ countOneBits(reverseBits(vec3<u32>(var_2.x, arg_1, var_2.x))), reverseBits(vec3<u32>(_wgslsmith_sub_u32(var_2.x, 0u), var_2.x, 69200u))));
    return arg_1;
}

fn func_7(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_3 {
    global0 = Struct_1(!func_4(vec2<bool>(!global0.a, true & global0.a), vec3<i32>(-2147483647i | global0.c.x, -1i, ~global1.c.x), 406i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(782f, arg_1))).a, _wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(-arg_2.b)), -(firstLeadingBit(countOneBits(vec2<i32>(0i, 2147483647i))) ^ -_wgslsmith_mult_vec2_i32(vec2<i32>(global1.c.x, 1i), vec2<i32>(1i, arg_2.c.x))));
    global1 = arg_2;
    var var_0 = global1.c.x;
    let var_1 = Struct_3(arg_2.a, func_1(vec4<i32>(abs(global1.c.x), global1.c.x, 2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.c.x, arg_3.x, -1i), abs(vec3<i32>(global1.c.x, u_input.a.x, 0i)))), arg_0).b.x, func_4(func_3((arg_2.c.x | u_input.a.x) | select(global0.c.x, -51595i, global0.a), _wgslsmith_f_op_f32(f32(-1f) * -810f)), u_input.a.yyw, _wgslsmith_add_i32((52016i << (arg_0 % 32u)) << (0u % 32u), -42931i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.b - global1.b), _wgslsmith_f_op_f32(-581f * global0.b)))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_5(Struct_2(vec4<i32>(global1.c.x, -2147483647i, u_input.a.x, -32167i), vec2<f32>(arg_1, 209f)), Struct_3(false, -1000f, vec3<bool>(arg_2.a, true, global1.a), 670f, vec3<u32>(arg_0, 26484u, arg_0)), global1.a, Struct_1(arg_2.a, 1523f, vec2<i32>(arg_3.x, global1.c.x))), func_4(vec2<bool>(false, arg_2.a), vec3<i32>(-44728i, 36218i, global0.c.x), global0.c.x, vec2<f32>(arg_2.b, global0.b)), true, Struct_1(true, 974f, vec2<i32>(-1925i, arg_2.c.x))).b.x + -413f)), ~min(vec3<u32>(1u, 44485u, arg_0) & _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(1u, arg_0, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 667u, 4294967295u), vec3<u32>(arg_0, arg_0, 16589u)) >> (vec3<u32>(0u, 1u, arg_0) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 304f)))));
    return Struct_3(false, _wgslsmith_f_op_f32(f32(-1f) * -292f), select(vec3<bool>(all(vec2<bool>(true, true)) || !arg_2.a, func_2(vec3<u32>(var_1.e.x, 1u, var_1.e.x), func_1(vec4<i32>(-4096i, 2147483647i, global1.c.x, 2147483647i), 1u).b.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(42815u, 25140u), 5u)], ~arg_0).x, true), vec3<bool>(global0.a, false, true), select(select(!vec3<bool>(true, var_1.c.x, true), func_4(vec2<bool>(true, true), u_input.a.zzx, global0.c.x, vec2<f32>(global0.b, -594f)).c, func_4(var_1.c.xz, vec3<i32>(-2147483647i, -21056i, global1.c.x), -4293i, vec2<f32>(104f, var_2)).c), select(select(var_1.c, vec3<bool>(false, true, true), false), var_1.c, func_4(vec2<bool>(arg_2.a, arg_2.a), u_input.a.yxw, u_input.a.x, vec2<f32>(arg_2.b, var_2)).c), !vec3<bool>(global1.a, var_1.c.x, global0.a))), _wgslsmith_f_op_f32(427f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-var_1.d))), ~(vec3<u32>(var_1.e.x << (16622u % 32u), max(arg_0, 4294967295u), _wgslsmith_dot_vec3_u32(var_1.e, vec3<u32>(var_1.e.x, arg_0, var_1.e.x))) & vec3<u32>(var_1.e.x, ~4294967295u, ~17451u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(firstTrailingBit(global0.c) | global1.c, global1.c);
    global2 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b, global0.b))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(530f - _wgslsmith_f_op_f32(global0.b + 1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + -422f)))));
    let var_2 = func_7(~func_6(func_5(func_1(u_input.a, 30812u), func_4(vec2<bool>(true, global1.a), u_input.a.wzw, 2147483647i, vec2<f32>(global1.b, global0.b)), global0.a, Struct_1(true, global0.b, vec2<i32>(u_input.a.x, var_0.x))), ~(~119733u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f * _wgslsmith_f_op_f32(trunc(global0.b))))), Struct_1(true, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -911f)), min(global0.c, vec2<i32>(firstTrailingBit(953i), u_input.a.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.x, u_input.a.x), u_input.a.wy), func_1(u_input.a, ~14713u).a.x));
    let var_3 = global0.c;
    var_0 = ~_wgslsmith_clamp_vec2_i32(-global0.c, vec2<i32>(-var_0.x, 923i), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(global1.c.x, 1i)), global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_2.e.x, var_2.e.x), 5042u), _wgslsmith_clamp_u32(~var_2.e.x, var_2.e.x, _wgslsmith_add_u32(~4412u, var_2.e.x)), -38152i);
}

