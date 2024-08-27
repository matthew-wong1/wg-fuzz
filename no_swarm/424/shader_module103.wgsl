struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: f32;

var<private> global3: array<bool, 5> = array<bool, 5>(true, true, false, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_u32(~firstLeadingBit(~(~arg_2.a)), ~abs((6048u | u_input.b) | ~819u));
    global0 = array<u32, 1>();
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(countOneBits(-26171i), (-2147483647i | arg_2.c.x) ^ arg_0.c.x);
    var_1 = arg_0.c.yx;
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(123959u, 4294967295u, 0u, ~20140u), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(37990u, var_0, arg_0.a)), ~4294967295u | _wgslsmith_sub_u32(arg_0.a, 45047u)), firstTrailingBit(1u), 61610u, ~_wgslsmith_div_u32(0u, u_input.b)));
    return _wgslsmith_f_op_vec4_f32(-arg_0.b);
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<f32>, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-563f, 595f) - vec2<f32>(-580f, -1081f)))))) * vec2<f32>(-1060f, _wgslsmith_f_op_f32(-1123f - _wgslsmith_f_op_f32(f32(-1f) * -554f))));
    global0 = array<u32, 1>();
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~64871u, u_input.b, u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global0[_wgslsmith_index_u32(1u, 1u)], vec4<f32>(var_0.x, 416f, 1000f, 230f), vec3<i32>(-1i, 1i, 46797i)), vec2<i32>(-4616i, -1i), Struct_1(25294u, vec4<f32>(417f, var_0.x, var_0.x, -1770f), vec3<i32>(-16372i, 20965i, 2147483647i)), var_0.x)))), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(838f, -1638f)), -100f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -930f), var_0.x, var_0.x, _wgslsmith_f_op_f32(ceil(1356f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(707f)), 1501f, var_0.x))), firstTrailingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, -13308i, -27975i), vec3<i32>(13410i, countOneBits(-2147483647i), 1i))));
    let var_2 = !vec3<bool>(global3[_wgslsmith_index_u32(10799u, 5u)], var_1.a < ~countOneBits(global0[_wgslsmith_index_u32(69270u, 1u)]), all(select(select(vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 5u)], global3[_wgslsmith_index_u32(u_input.a, 5u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 5u)], true), global3[_wgslsmith_index_u32(41438u, 5u)]), !vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 5u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 5u)]), select(vec2<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27243u, 1u)], 5u)]), vec2<bool>(global3[_wgslsmith_index_u32(104579u, 5u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 1u)], 5u)]), global3[_wgslsmith_index_u32(4294967295u, 5u)]))));
    return var_1;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = 616f;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(12854u, 44890u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 82453u), vec2<u32>(u_input.b, 50416u), vec2<u32>(0u, 1u)) % vec2<u32>(32u))) | vec2<u32>(~global0[_wgslsmith_index_u32(~1u, 1u)], abs(~var_1.a)), vec2<u32>(~98541u, 64398u));
    var var_3 = Struct_1(abs(1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b.x, 544f, arg_2.b.x, -775f), vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 316f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1593f, arg_2.b.x, arg_2.b.x, var_1.b.x), _wgslsmith_div_vec4_f32(var_1.b, var_1.b), arg_3.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(func_2(), -vec2<i32>(arg_2.c.x, 45265i), func_2(), arg_2.b.x)) * func_2().b)), var_1.c);
    var var_4 = var_1.c;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = arg_0.c.x;
    global3 = array<bool, 5>();
    var var_2 = var_0.a;
    var_1 = arg_1.x;
    return Struct_1(~u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b), _wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, false)))))), arg_0.c);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec3<f32>, 29>();
    var var_0 = arg_1;
    var var_1 = func_5(func_5(arg_1, max(vec2<i32>(-7487i, arg_1.c.x | arg_1.c.x), vec2<i32>(-2147483647i, -6890i))), abs(vec2<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, arg_2.x), vec2<i32>(arg_1.c.x, -2147483647i)), ~arg_1.c.x), abs(var_0.c.x))));
    let var_2 = any(vec3<bool>(firstLeadingBit(-8238i) > arg_3.c.x, !(!(!arg_0)), (1i ^ var_0.c.x) > ~arg_2.x));
    var_0 = func_4(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(30999u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]))), ~(~u_input.c.zx)), abs(arg_2.x), Struct_1(~global0[_wgslsmith_index_u32(countOneBits(~64770u), 1u)], arg_1.b, arg_3.c), select(select(select(!vec3<bool>(true, arg_0, global3[_wgslsmith_index_u32(var_0.a, 5u)]), vec3<bool>(true, arg_0, true), !var_2), !select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, var_2, true), global3[_wgslsmith_index_u32(0u, 5u)]), select(vec3<bool>(true, false, true), vec3<bool>(global3[_wgslsmith_index_u32(565u, 5u)], false, false), !vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30150u, 1u)], 5u)], false, true))), !select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], arg_0, false), !vec3<bool>(var_2, true, global3[_wgslsmith_index_u32(var_0.a, 5u)]), !vec3<bool>(false, true, arg_0)), true));
    return Struct_1(13845u, func_5(arg_3, min(~func_4(var_0.a, var_1.c.x, Struct_1(30680u, var_0.b, arg_3.c), vec3<bool>(true, true, var_2)).c.yz, select(vec2<i32>(-14028i, arg_2.x), vec2<i32>(arg_3.c.x, 48052i), vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 5u)], var_2)) ^ abs(vec2<i32>(1i, 25517i)))).b, _wgslsmith_div_vec3_i32(select(-func_2().c, abs(_wgslsmith_mod_vec3_i32(var_0.c, vec3<i32>(45681i, arg_1.c.x, arg_1.c.x))), (true && arg_0) | all(vec3<bool>(true, var_2, var_2))), _wgslsmith_add_vec3_i32(vec3<i32>(~var_0.c.x, _wgslsmith_dot_vec2_i32(var_0.c.yx, var_0.c.zy), _wgslsmith_clamp_i32(-5513i, 7123i, -12758i)), arg_3.c)));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_6(true, func_5(func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(391u, 1u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4401u, 1u)], 1u)], u_input.c.x)), (-18709i >> (global0[_wgslsmith_index_u32(59211u, 1u)] % 32u)) | ~(-2147483647i), func_2(), select(select(vec3<bool>(true, false, false), vec3<bool>(false, global3[_wgslsmith_index_u32(71994u, 5u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 5u)], global3[_wgslsmith_index_u32(79574u, 5u)], true)), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 5u)], global3[_wgslsmith_index_u32(u_input.a, 5u)]), true)), -(firstTrailingBit(vec2<i32>(-68580i, -31551i)) & _wgslsmith_div_vec2_i32(vec2<i32>(1445i, 28799i), vec2<i32>(-20399i, 16757i)))), -_wgslsmith_mult_vec2_i32(-(~vec2<i32>(11008i, 9486i)), vec2<i32>(4315i, func_5(Struct_1(8377u, vec4<f32>(898f, 863f, 947f, -1000f), vec3<i32>(-1i, -2147483647i, -1i)), vec2<i32>(2811i, -9642i)).c.x)), Struct_1(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.c.xy, ~vec2<u32>(4294967295u, u_input.c.x)), 1u)], vec4<f32>(-1637f, _wgslsmith_div_f32(-448f, _wgslsmith_f_op_f32(f32(-1f) * -349f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_4(1u, func_4(u_input.c.x, -2147483647i, Struct_1(global0[_wgslsmith_index_u32(7337u, 1u)], vec4<f32>(1255f, 757f, -258f, 1085f), vec3<i32>(-1i, 40013i, -2147483647i)), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)])).c.x, func_4(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], -56978i, Struct_1(79914u, vec4<f32>(-2204f, -242f, -397f, -890f), vec3<i32>(-2147483647i, 1i, -82791i)), vec3<bool>(true, global3[_wgslsmith_index_u32(52705u, 5u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 5u)])), vec3<bool>(true, true, true)).b.x), abs(~func_4(u_input.b, 41446i, Struct_1(u_input.b, vec4<f32>(346f, 927f, -1154f, -852f), vec3<i32>(21728i, -1i, 10327i)), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 5u)], global3[_wgslsmith_index_u32(u_input.c.x, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)])).c)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, var_0.b.x, 357f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), -375f))), var_0.b.yyy)));
    let var_2 = firstTrailingBit(var_0.a);
    let var_3 = func_4(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(abs(var_2), 1u)], 21704u), max(abs(-1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(50942i, 0i, 2147483647i, 20380i), max(vec4<i32>(49439i, -3823i, var_0.c.x, -7848i), vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)))), var_0, select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(var_2, 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(var_2, 5u)], true, global3[_wgslsmith_index_u32(12703u, 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 5u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52977u, 1u)], 5u)], false)), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 5u)], global3[_wgslsmith_index_u32(var_2, 5u)], global3[_wgslsmith_index_u32(var_2, 5u)]), select(vec3<bool>(false, true, true), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 5u)], true), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23472u, 1u)], 5u)])), select(select(vec3<bool>(global3[_wgslsmith_index_u32(var_0.a, 5u)], false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 5u)], global3[_wgslsmith_index_u32(var_0.a, 5u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 1u)], 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(60661u, 5u)], global3[_wgslsmith_index_u32(var_2, 5u)]))), select(!select(vec3<bool>(global3[_wgslsmith_index_u32(47177u, 5u)], false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(var_2, 5u)], true, global3[_wgslsmith_index_u32(var_0.a, 5u)]), true), vec3<bool>(any(vec4<bool>(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 1u)], 5u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 1u)], 5u)], global3[_wgslsmith_index_u32(53796u, 5u)])), all(vec4<bool>(global3[_wgslsmith_index_u32(3916u, 5u)], false, global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)])), global3[_wgslsmith_index_u32(~u_input.c.x, 5u)]), select(select(vec3<bool>(global3[_wgslsmith_index_u32(var_0.a, 5u)], true, global3[_wgslsmith_index_u32(31889u, 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(var_2, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(10478u, 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(17521u, 5u)], global3[_wgslsmith_index_u32(u_input.a, 5u)], true), global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), var_0.b.x <= var_0.b.x)), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(var_2, 5u)], false, global3[_wgslsmith_index_u32(u_input.b, 5u)]), vec3<bool>(false, false, false), global3[_wgslsmith_index_u32(1u, 5u)]))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    return StorageBuffer(vec4<f32>(299f, _wgslsmith_f_op_f32(1326f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(383f, 1467f)) * -1000f)), var_0.b.x, _wgslsmith_f_op_f32(-127f - _wgslsmith_div_f32(333f, _wgslsmith_f_op_f32(floor(var_3.b.x))))), ~4294967295u, vec4<u32>(_wgslsmith_clamp_u32(countOneBits(var_2), 1u, var_3.a), var_3.a, 0u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(u_input.b, 1u)], _wgslsmith_div_vec4_f32(vec4<f32>(727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f * -224f)), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1774f, -808f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1708f, 1610f, 183f, 261f), vec4<f32>(-1171f, -564f, -321f, 140f), global3[_wgslsmith_index_u32(68393u, 5u)])), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1855f, 816f, -196f)))))), vec3<i32>(abs(_wgslsmith_mod_i32(~(-1i), 1i)), i32(-1i) * -(i32(-1i) * -68895i), -(~1i)));
    global1 = array<vec3<f32>, 29>();
    var var_1 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-236f)) + 591f), var_0.b.x, -239f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1557f, 801f), _wgslsmith_f_op_f32(f32(-1f) * -1067f), global3[_wgslsmith_index_u32(1u, 5u)])))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.x & var_0.c.x, ~9601i, -30666i), ~(-var_0.c)), var_0.c));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f));
    var_2 = _wgslsmith_f_op_f32(904f + -1617f);
    var var_3 = vec4<bool>(true, !all(!(!vec3<bool>(global3[_wgslsmith_index_u32(var_0.a, 5u)], false, false))), all(select(vec2<bool>(global3[_wgslsmith_index_u32(16882u, 5u)], global3[_wgslsmith_index_u32(min(50155u, var_1.a), 5u)]), !select(vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(true, false), true), vec2<bool>(true, any(vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 5u)], true))))), false);
    let x = u_input.a;
    s_output = func_1();
}

