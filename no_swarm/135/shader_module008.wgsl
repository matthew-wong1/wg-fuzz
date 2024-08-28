struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: Struct_1 = Struct_1(1u, 2147483647i, vec4<f32>(-567f, -386f, 1258f, 872f));

var<private> global2: array<Struct_1, 2>;

var<private> global3: Struct_1 = Struct_1(127615u, i32(-2147483648), vec4<f32>(-593f, -645f, 1873f, -1495f));

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(77551u, -32774i, vec4<f32>(1000f, 638f, -1694f, 142f)), Struct_1(1u, -44343i, vec4<f32>(-2518f, -552f, 783f, 1000f)), Struct_1(21760u, 2147483647i, vec4<f32>(132f, -823f, 332f, 950f)), Struct_1(1u, 0i, vec4<f32>(-1000f, -1090f, 860f, -1072f)), Struct_1(4294967295u, -10361i, vec4<f32>(102f, 475f, -112f, 618f)), Struct_1(13097u, 6648i, vec4<f32>(1582f, 1258f, -1000f, -1051f)), Struct_1(167u, -1i, vec4<f32>(1413f, -522f, -193f, 1141f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    global3 = global0[_wgslsmith_index_u32(16437u, 26u)];
    let var_0 = select(vec2<bool>(false, 0u < global1.a), vec2<bool>(true && any(vec2<bool>(true, true)), false & ((i32(-1i) * -2147483647i) != reverseBits(u_input.c.x))), !select(vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true), select(select(false, true, true), any(vec3<bool>(true, true, false)), false)));
    var var_1 = Struct_1(global3.a, _wgslsmith_dot_vec3_i32(-u_input.c.wzy, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.c.wxz, ~vec3<i32>(global1.b, global3.b, global3.b)), min(u_input.c.xwy, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, global3.b, global3.b), u_input.c.xxy)))), vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.c.x, global1.c.x)))), global1.c.x));
    let var_2 = 0i;
    let var_3 = abs(~u_input.b.zw);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global3.c))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(arg_0.a << (arg_0.a % 32u), 47531u), -(~33281i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.c.x, 791f, arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(global1.c.x, 810f, global1.c.x, -1415f))))))));
    var var_1 = firstLeadingBit(~arg_0.a) >> (arg_2.x % 32u);
    global2 = array<Struct_1, 2>();
    var var_2 = arg_1.c.yz;
    let var_3 = (min(firstTrailingBit(vec3<u32>(13617u, 0u, global1.a)) << (vec3<u32>(1u, 42555u, 93705u) % vec3<u32>(32u)), arg_2) | firstLeadingBit(~firstLeadingBit(vec3<u32>(44945u, arg_0.a, u_input.b.x)))) >> (max(vec3<u32>(_wgslsmith_sub_u32(51856u, 12884u), var_0.a, 71538u), max(vec3<u32>(global3.a, 1u, arg_2.x), select(vec3<u32>(16229u, u_input.b.x, global3.a), arg_2, vec3<bool>(true, false, false)) << (u_input.b.zyz % vec3<u32>(32u)))) % vec3<u32>(32u));
    return arg_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = any(vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    var var_1 = var_0;
    global3 = arg_1;
    let var_2 = ~40259i;
    var var_3 = abs(-1i);
    return global3.b;
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    global2 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 17129u, global3.a), 26u)];
}

fn func_1() -> Struct_1 {
    global4 = array<Struct_1, 7>();
    let var_0 = global4[_wgslsmith_index_u32(~global1.a, 7u)];
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.ywx, _wgslsmith_mult_vec3_u32(~u_input.b.wzx, ~select(u_input.b.xyz, u_input.b.zyy, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))))), 2u)];
    global0 = array<Struct_1, 26>();
    var var_2 = func_5(~func_4(vec2<i32>(30910i, 9109i) | vec2<i32>(global1.b, 1i), func_2(Struct_1(var_0.a, 741i, var_0.c), global4[_wgslsmith_index_u32(select(4294967295u, 9867u, false), 7u)], u_input.b.yyz, _wgslsmith_sub_i32(-1570i, u_input.c.x)), Struct_1(85805u, _wgslsmith_sub_i32(-28964i, -8867i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1800f, var_1.c.x, var_1.c.x, var_1.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.c.x)), global3.c.x))), min(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 20925u, 60598u), countOneBits(u_input.b.xwz)), ~u_input.b.wyw), u_input.b, !any(vec2<bool>(true, true)) != true);
    return func_2(func_2(Struct_1(29062u, _wgslsmith_mult_i32(min(var_2.b, -56911i), _wgslsmith_add_i32(var_0.b, var_0.b)), var_1.c), global0[_wgslsmith_index_u32(countOneBits(global3.a), 26u)], abs(~(~u_input.b.xxw)), abs(-_wgslsmith_div_i32(global1.b, 0i))), Struct_1(~abs(~var_2.a), _wgslsmith_mult_i32(56775i, var_0.b), _wgslsmith_div_vec4_f32(global1.c, vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(exp2(var_2.c.x)), func_5(-2147483647i, vec3<u32>(var_1.a, var_0.a, global1.a), u_input.b, true).c.x, 296f))), ~(~u_input.b.xww), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~(-8218i), max(2147483647i, -28001i)), var_1.b), max(u_input.c.x, func_2(global4[_wgslsmith_index_u32(23079u, 7u)], func_5(var_0.b, u_input.b.xxw, vec4<u32>(global1.a, 79421u, 1u, 53314u), true), select(vec3<u32>(22619u, 4294967295u, 4294967295u), vec3<u32>(6045u, 11750u, 69083u), vec3<bool>(false, false, true)), ~(-16933i)).b)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    global2 = array<Struct_1, 2>();
    let var_0 = !(!vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global1.c.x) != -506f, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))));
    let var_1 = func_5((select(_wgslsmith_mult_i32(arg_1, arg_1), -2147483647i, var_0.x) | (arg_1 ^ 52509i)) >> ((_wgslsmith_dot_vec3_u32(~u_input.b.zxw, vec3<u32>(1u, 10561u, arg_0.a)) | abs(arg_0.a)) % 32u), ~(~(vec3<u32>(1u, 4294967295u, 4294967295u) >> (u_input.b.yxy % vec3<u32>(32u)))), u_input.b, all(vec4<bool>(14371i != (arg_0.b >> (arg_3 % 32u)), any(var_0), var_0.x, any(var_0.xy))));
    let var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.b.wxz, vec3<u32>(_wgslsmith_div_u32(global1.a, global1.a), global1.a, ~4294967295u)), ~(_wgslsmith_div_u32(var_1.a, u_input.b.x) << (arg_3 % 32u))), _wgslsmith_sub_i32(5318i, firstTrailingBit(~abs(global3.b))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), var_1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), -251f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(378f + arg_0.c.x), -1353f), global3.c.x), vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * 532f), _wgslsmith_f_op_f32(492f * -794f), -1867f, -1498f), vec4<bool>(false, var_0.x, any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, var_0.x), var_0)), !var_0.x))));
    var var_3 = select(!select(vec4<bool>(true, false, true, var_0.x), !select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), false), !var_0.x | true), vec4<bool>(!(!(!var_0.x)), true, var_0.x, false), all(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, true), var_0.x), vec3<bool>(var_0.x, !var_0.x, any(vec2<bool>(true, true))), 10646u < min(var_1.a, global3.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_vec4_f32(func_3(var_1.c)).x))), -228f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(101644u, 2u)];
    let var_1 = global4[_wgslsmith_index_u32(global3.a, 7u)];
    var_0 = Struct_1(select(4294967295u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(global1.a, 1u), var_1.a), true), 1i, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f) - -2405f))), _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_6(func_1(), 1i >> (global1.a % 32u), _wgslsmith_f_op_vec3_f32(-var_1.c.ywy), 0u)), _wgslsmith_f_op_f32(global3.c.x + _wgslsmith_f_op_f32(f32(-1f) * -1620f)), select(true, all(vec3<bool>(false, false, true)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, var_1.c.x)))));
    global2 = array<Struct_1, 2>();
    var var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(var_1.a ^ abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(~var_1.a, _wgslsmith_mult_u32(1u, u_input.b.x)), ~firstLeadingBit(u_input.b.x))), 26u)];
    var var_4 = false;
    var var_5 = func_2(Struct_1(~4294967295u, var_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_1.c)).x, -140f, -261f, func_2(Struct_1(var_0.a, global1.b, vec4<f32>(-552f, var_1.c.x, global3.c.x, 198f)), global4[_wgslsmith_index_u32(7372u, 7u)], vec3<u32>(0u, var_1.a, 0u), 35458i).c.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c), vec4<f32>(-581f, global1.c.x, global3.c.x, global1.c.x)))), global0[_wgslsmith_index_u32(func_1().a, 26u)], ~vec3<u32>(func_2(global0[_wgslsmith_index_u32(var_3.a, 26u)], Struct_1(var_3.a, var_0.b, var_3.c), vec3<u32>(0u, var_0.a, var_0.a), ~0i).a, abs(global3.a) | var_3.a, select(5429u, 4294967295u, false)), -(~(-(u_input.c.x ^ -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a, var_1.c, func_1().c.wwz, u_input.c, 654f);
}

