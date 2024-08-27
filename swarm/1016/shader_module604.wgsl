struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, true, false);

var<private> global1: array<Struct_2, 22>;

var<private> global2: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = ~29720u;
    var var_1 = ~u_input.e;
    var var_2 = global1[_wgslsmith_index_u32(var_1.x, 22u)];
    var_1 = vec3<u32>(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(u_input.b.xwx, vec3<u32>(4294967295u, 0u, var_2.d.a.x), false), vec3<u32>(u_input.c, 12749u, var_2.d.a.x)), var_2.d.a.zzx)), min(u_input.e.x & _wgslsmith_div_u32(1u, var_1.x), 82085u), ~abs(~var_2.d.a.x));
    var var_3 = global1[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~(~59534u), _wgslsmith_add_u32(~select(1u, 0u, true), ~1u)), ~min(3840u, 1u)), 22u)];
    return var_2.d;
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = true;
    var var_1 = Struct_4(false, select(u_input.e, ~reverseBits(~vec3<u32>(22382u, 4395u, 27833u)), vec3<bool>(arg_0.a, arg_0.a, all(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.b.x, 3u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, -496f, 598f), vec3<f32>(-1123f, arg_0.d.b, arg_0.c.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-392f, arg_0.c.x, 1772f), vec3<f32>(-1502f, -1693f, -1005f), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d.a.x, 3u)], arg_0.a, true), vec3<bool>(false, arg_0.d.d, true)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_0.d.b, 805f), _wgslsmith_f_op_vec3_f32(-arg_0.c), true)))), func_2(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)])), vec2<bool>(arg_0.a, arg_0.d.d), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(19415u, 3u)]))), select(any(vec4<bool>(true, true, false, false)), any(select(vec3<bool>(false, arg_0.a, arg_0.d.d), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d.a.x, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)]), arg_0.d.d)), arg_0.d.d)));
    let var_2 = Struct_3(Struct_1(~abs(reverseBits(arg_0.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f + arg_0.d.b) - 852f) - _wgslsmith_f_op_f32(-arg_0.c.x)), countOneBits(~(var_1.b.x >> (var_1.b.x % 32u))), var_1.d.d), select(!select(vec4<bool>(arg_0.d.d, false, true, true), select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(var_1.b.x, 3u)]), vec4<bool>(var_1.d.d, global0[_wgslsmith_index_u32(arg_0.b.x, 3u)], var_1.a, global0[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(var_1.a, var_1.d.d, true, true)), vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], var_1.a, arg_0.a, global0[_wgslsmith_index_u32(1u, 3u)])), select(vec4<bool>(all(vec3<bool>(var_1.d.d, global0[_wgslsmith_index_u32(47365u, 3u)], var_1.a)), select(true, false, false), false, arg_0.a), !select(vec4<bool>(global0[_wgslsmith_index_u32(41099u, 3u)], true, true, arg_0.a), vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.b.x, 3u)], arg_0.a, arg_0.a), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(4294967295u, 3u)])), true), global0[_wgslsmith_index_u32(~arg_0.d.a.x, 3u)]), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 12744u, 3568u, arg_0.d.a.x), var_1.d.a) | vec4<u32>(0u, 4294967295u, 19794u << (arg_0.b.x % 32u), ~2619u), _wgslsmith_f_op_f32(abs(func_2(vec2<bool>(false, false), arg_0.d.d).b)), ~4294967295u, !global0[_wgslsmith_index_u32(~(~0u), 3u)]));
    let var_3 = var_1.d.d;
    global0 = array<bool, 3>();
    return 1f;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = -u_input.a.wxw;
    global1 = array<Struct_2, 22>();
    let var_1 = vec4<u32>(~77921u, _wgslsmith_dot_vec2_u32(u_input.e.yx, u_input.e.xz), _wgslsmith_mod_u32(_wgslsmith_mult_u32(max(1u, u_input.c), 48958u), 48850u), abs(u_input.e.x));
    let var_2 = Struct_3(func_2(!select(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 3u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 3u)], global0[_wgslsmith_index_u32(var_1.x, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.e.x, 3u)]), true), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(10695u, 3u)]), vec2<bool>(true, true), true)), global0[_wgslsmith_index_u32(1u, 3u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 3u)] & false, false, global0[_wgslsmith_index_u32(4294967295u, 3u)], true)), Struct_1((~vec4<u32>(43936u, var_1.x, u_input.b.x, var_1.x) >> (u_input.b % vec4<u32>(32u))) << (min(countOneBits(vec4<u32>(47473u, 0u, var_1.x, 3466u)), vec4<u32>(u_input.e.x, u_input.b.x, u_input.b.x, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-arg_1.x), ~(u_input.b.x | var_1.x), true));
    let var_3 = Struct_4(var_2.c.d, func_2(!vec2<bool>(false, !var_2.c.d), true).a.zzz, vec3<f32>(arg_1.x, 224f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.b * -357f) - 1326f)))), var_2.a);
    return !vec4<bool>(any(select(var_2.b, vec4<bool>(false, false, var_2.a.d, global0[_wgslsmith_index_u32(2591u, 3u)]), var_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-123f)), arg_1.x) >= -300f, any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec4<bool>(true, var_3.d.d, true, global0[_wgslsmith_index_u32(u_input.e.x, 3u)]), vec4<bool>(var_3.a, global0[_wgslsmith_index_u32(4294967295u, 3u)], var_3.d.d, false))), select(true, func_2(!vec2<bool>(var_3.d.d, true), var_2.a.d).d, false));
}

fn func_1() -> Struct_3 {
    return Struct_3(func_2(!vec2<bool>(true, 40204u >= u_input.c), true | global0[_wgslsmith_index_u32(u_input.e.x, 3u)]), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 3u)] | false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, func_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], false), true).d, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(10388u, 3u)], true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 3u)], true, true, global0[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 3u)], global0[_wgslsmith_index_u32(u_input.e.x, 3u)], false, global0[_wgslsmith_index_u32(55555u, 3u)])), true)), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 3u)], false, true), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true, true), all(vec3<bool>(true, global0[_wgslsmith_index_u32(4207u, 3u)], false))), false), func_4(-vec3<i32>(2147483647i, -2147483647i, u_input.d.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 0u), u_input.b.yxx, vec3<u32>(23072u, 1u, 80459u)) % vec3<u32>(32u)), vec3<f32>(379f, _wgslsmith_f_op_f32(func_3(Struct_4(global0[_wgslsmith_index_u32(0u, 3u)], vec3<u32>(4294967295u, 0u, u_input.c), vec3<f32>(1289f, -139f, 1113f), Struct_1(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), 592f, u_input.c, global0[_wgslsmith_index_u32(15577u, 3u)])))), _wgslsmith_f_op_f32(ceil(-308f))))), Struct_1(~(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u) << (vec4<u32>(u_input.c, 0u, 27689u, 0u) % vec4<u32>(32u))) | firstTrailingBit(u_input.b), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2260f)), _wgslsmith_f_op_f32(-995f * -785f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-767f, 890f) - _wgslsmith_f_op_f32(step(1190f, 1000f)))), 4294967295u, global0[_wgslsmith_index_u32(func_2(!select(vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true)), global0[_wgslsmith_index_u32(29217u, 3u)]).c, 3u)]));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> Struct_3 {
    let var_0 = vec2<f32>(-720f, 517f);
    var var_1 = func_2(arg_1, func_1().b.x).a.zxw;
    var var_2 = arg_0;
    var var_3 = var_2.a.a.x;
    let var_4 = Struct_4(!(u_input.b.x >= 0u), u_input.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.b, _wgslsmith_f_op_f32(trunc(arg_0.a.b)), 583f) + vec3<f32>(_wgslsmith_f_op_f32(func_1().a.b - 692f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f * arg_0.a.b)), var_2.a.b)), Struct_1(_wgslsmith_clamp_vec4_u32(firstLeadingBit(var_2.a.a & arg_0.c.a), vec4<u32>(1u, 4294967295u, arg_0.c.c, 1u), var_2.c.a), var_0.x, arg_3, func_4(u_input.a.yzw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b, var_2.a.b, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -651f)))).x));
    return Struct_3(arg_0.a, select(arg_0.b, vec4<bool>(var_4.a, (var_2.c.c <= var_4.d.c) & true, -u_input.a.x > (u_input.a.x & -1i), true), !func_4(vec3<i32>(31309i, 0i, -24613i), _wgslsmith_f_op_vec3_f32(-var_4.c))), func_1().a);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(vec4<u32>(abs(~(arg_1.d.c << (80618u % 32u))), func_1().c.a.x, _wgslsmith_mod_u32(54220u, ~u_input.b.x), u_input.b.x), func_5(func_5(arg_0, arg_0.b.zw, _wgslsmith_sub_i32(-37744i, _wgslsmith_sub_i32(arg_1.b, -17084i)), ~(~24829u)), !arg_0.b.yw, 13969i, arg_1.d.c).a.b, _wgslsmith_mult_u32(arg_0.a.a.x, ~4294967295u), all(func_4(firstLeadingBit(_wgslsmith_add_vec3_i32(u_input.a.zxx, vec3<i32>(u_input.a.x, 1i, arg_1.e))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c.b, -530f, 1399f)))))).yw));
    var var_1 = arg_0.a;
    let var_2 = true;
    var var_3 = select(!(!(!var_0.d && func_4(vec3<i32>(arg_1.e, 16898i, arg_1.b), vec3<f32>(-955f, arg_0.a.b, -465f)).x)), !((var_2 || global0[_wgslsmith_index_u32(var_1.c, 3u)]) & (func_2(arg_0.b.xy, true).d | (global0[_wgslsmith_index_u32(u_input.b.x, 3u)] && var_1.d))), func_2(vec2<bool>(false, func_1().c.d), true).d);
    global0 = array<bool, 3>();
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_vec2_i32(firstTrailingBit(abs(u_input.a.zz >> (vec2<u32>(18879u, u_input.b.x) % vec2<u32>(32u)))), abs(_wgslsmith_mod_vec2_i32(min(u_input.d.zz, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.ww)), u_input.d.xx));
    var var_1 = ~max(1u | u_input.c, ~1u);
    global1 = array<Struct_2, 22>();
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, -2147483647i & (firstLeadingBit(1i) ^ var_0.x), func_6(func_5(func_1(), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 3u)]), min(1i, 55187i), u_input.b.x), Struct_2(true, u_input.d.x, -20374i, Struct_1(vec4<u32>(30039u, u_input.e.x, 1u, u_input.b.x), -909f, 0u, true), 16840i))), -(~(-vec4<i32>(var_0.x, var_0.x, 41709i, -20154i))), abs(u_input.a));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1926f))) - -773f))));
    var var_4 = Struct_4(func_1().c.d, ~(vec3<u32>(~u_input.c, firstTrailingBit(u_input.c), 9456u) ^ vec3<u32>(firstLeadingBit(u_input.b.x), ~u_input.b.x, _wgslsmith_sub_u32(u_input.e.x, 47164u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1546f * -668f)) - -1580f), _wgslsmith_f_op_f32(func_1().a.b + -1361f), 122f), Struct_1(vec4<u32>(~firstTrailingBit(u_input.e.x), func_1().c.a.x >> (select(0u, 50411u, global0[_wgslsmith_index_u32(1u, 3u)]) % 32u), u_input.c, _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(19720u, 1u, u_input.b.x, u_input.c))), _wgslsmith_f_op_f32(abs(func_2(!vec2<bool>(true, global0[_wgslsmith_index_u32(22405u, 3u)]), all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)]))).b)), 11493u, global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 57359u, 1u, u_input.b.x))), 3u)]));
    var var_5 = select(u_input.b.ww, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.e.zz, vec2<u32>(u_input.e.x, 0u)) ^ (vec2<u32>(1u, var_4.b.x) & vec2<u32>(89670u, 60823u)), u_input.e.xx), 16952u), false);
    let x = u_input.a;
    s_output = StorageBuffer(-1747f, _wgslsmith_div_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_2.x, 1i), vec4<i32>(var_2.x, var_0.x, 2147483647i, u_input.d.x))), firstLeadingBit(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, var_2.x, -24315i), vec4<i32>(var_2.x, 4285i, 28862i, 26861i), vec4<i32>(var_0.x, var_0.x, 2147483647i, 1i)))), var_4.d.b, 57559i);
}

