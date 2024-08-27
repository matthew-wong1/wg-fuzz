struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-2379f, vec3<bool>(true, true, true)), -249f, vec4<i32>(-31675i, 12473i, 43395i, 25385i)), Struct_2(Struct_1(458f, vec3<bool>(false, true, false)), -559f, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i)), false, 2147483647i);

var<private> global1: array<vec4<f32>, 27>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    return ~(~_wgslsmith_clamp_u32(reverseBits(75832u) ^ (arg_1.x << (4294967295u % 32u)), 52891u, firstTrailingBit(_wgslsmith_mult_u32(arg_2.x, 32627u))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_4(Struct_1(162f, select(!(!global3.a.b), vec3<bool>(all(vec3<bool>(global2.x, global3.a.b.x, false)), true, global2.x), !vec3<bool>(global0.c, false, global2.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, ~arg_0.x, func_3(35751u, arg_0.zw, vec4<u32>(2539u, 32819u, 15531u, arg_0.x), Struct_3(global0.b, Struct_2(Struct_1(1465f, global0.a.a.b), arg_1.x, global0.b.c), global0.c, 1i))), max(arg_0, ~arg_0)));
    var var_1 = max(var_0.b.x, _wgslsmith_mod_u32(arg_0.x, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(4294967295u, 99692u), var_0.b.yy, global2.x), ~(~var_0.b.yz))));
    var var_2 = global0.a.a.a;
    global3 = Struct_2(global3.a, _wgslsmith_f_op_f32(-var_0.a.a), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(-32327i, global0.a.c.x, global3.c.x), abs(-2147483647i), -global0.d), _wgslsmith_clamp_vec4_i32(~global3.c, ~global3.c, ~vec4<i32>(global0.a.c.x, global0.a.c.x, global0.d, global0.d)), vec4<i32>(global3.c.x, _wgslsmith_mod_i32(-2147483647i, -2147483647i), 1i, _wgslsmith_mult_i32(-1i, 2751i))));
    var var_3 = -221f;
    return vec3<i32>(i32(-1i) * -2147483647i, min(select(reverseBits(global3.c.x), global3.c.x, global2.x), -firstTrailingBit(global0.d)), _wgslsmith_div_i32(reverseBits(~global3.c.x), 15753i));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<vec4<f32>, 27>();
    var var_0 = global3.a.b.x;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1138f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1159f, global0.b.a.a)) + global3.a.a)), global3.a.b), -730f, abs(max(~(-vec4<i32>(-1i, -42046i, -11013i, -616i)), firstLeadingBit(global3.c))));
    var var_2 = Struct_3(global0.a, Struct_2(var_1.a, 262f, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_1.x, _wgslsmith_div_i32(arg_1.x, -26320i), -global3.c.x), vec4<i32>(_wgslsmith_add_i32(-35117i, -24237i), arg_1.x, var_1.c.x, 1i))), false, -237i);
    let var_3 = global0.c;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(867f, global3.a.a)))) * -577f), global0.a.a.b);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_4(func_4(2147483647i, select(vec3<i32>(abs(15266i), -23120i, abs(1i)), func_2(vec4<u32>(39256u, 4388u, 1u, 6758u), vec4<f32>(global3.a.a, 1812f, global3.b, global0.b.b), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, global0.a.a.a)))), vec3<bool>(!global0.b.a.b.x, true, global3.a.b.x))), vec4<u32>(abs(~(4294967295u << (u_input.a % 32u))), u_input.a, 4294967295u, ~(~(~u_input.a))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), 1922f, var_0.a.a, _wgslsmith_f_op_f32(-global0.a.a.a));
    global3 = Struct_2(func_4(36967i, (-vec3<i32>(global0.d, 695i, -1i) & global0.b.c.xwx) >> (~_wgslsmith_div_vec3_u32(var_0.b.xwx, var_0.b.zwy) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + global0.a.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1001f)) * _wgslsmith_f_op_f32(f32(-1f) * -1922f)) * -951f)), ~((~global0.b.c >> (var_0.b % vec4<u32>(32u))) >> ((vec4<u32>(u_input.a, 0u, 80953u, var_0.b.x) >> (~var_0.b % vec4<u32>(32u))) % vec4<u32>(32u))));
    global1 = array<vec4<f32>, 27>();
    var var_2 = Struct_4(func_4(global0.b.c.x, -select(min(vec3<i32>(24181i, global3.c.x, global0.a.c.x), global0.a.c.xwy), vec3<i32>(global3.c.x, 894i, 1i), all(vec4<bool>(global0.a.a.b.x, global2.x, true, arg_1.x)))), firstTrailingBit(firstTrailingBit(firstLeadingBit(var_0.b)) >> ((reverseBits(var_0.b) << (vec4<u32>(0u, var_0.b.x, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return -203f;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_5 {
    var var_0 = ~global3.c.wwy;
    var var_1 = arg_0;
    let var_2 = -1i;
    var var_3 = Struct_5(_wgslsmith_dot_vec2_i32(~var_1.b.c.ww, firstLeadingBit(select(vec2<i32>(var_0.x, -13162i), vec2<i32>(global0.d, var_2) | arg_0.b.c.xz, select(vec2<bool>(var_1.c, global2.x), global0.b.a.b.zx, global0.b.a.b.xy)))), _wgslsmith_f_op_f32(-var_1.a.a.a), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(global3.c.yw ^ var_0.xx), -var_0.yy ^ global3.c.zx), var_1.b.c.yz), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1527f), var_1.a.b, -673f, _wgslsmith_f_op_f32(abs(global3.a.a)))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.a * -250f)), 346f)))));
    return Struct_5((-2147483647i & _wgslsmith_clamp_i32(4295i ^ var_0.x, _wgslsmith_dot_vec2_i32(var_1.a.c.zz, arg_0.a.c.xz), 0i)) & -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1085f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f - 832f))) - -281f), var_0.yz, _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(func_3(countOneBits(_wgslsmith_dot_vec2_u32(arg_2.b.yy, vec2<u32>(1u, arg_2.b.x))), vec2<u32>(~4294967295u, 66609u), arg_1, Struct_3(Struct_2(global0.a.a, -2056f, global3.c), Struct_2(global3.a, 1021f, vec4<i32>(1i, 1i, 1i, 1i)), any(vec2<bool>(global0.b.a.b.x, true)), arg_0.a.c.x)), 27u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.a.b.x;
    let var_1 = global0.a;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 27u)];
    let var_3 = firstLeadingBit(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(135931u, 0u), vec2<u32>(u_input.a, 1u)), vec2<u32>(14306u, u_input.a)) ^ 8005u, 4294967295u));
    var var_4 = !(!var_1.a.b.zy);
    global1 = array<vec4<f32>, 27>();
    let var_5 = func_5(Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(-763f * global0.a.b), var_1.a.b), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(max(-794f, 346f)), global3.a.b)), firstTrailingBit(firstLeadingBit(global0.a.c))), all(vec4<bool>(all(vec4<bool>(true, global3.a.b.x, false, var_1.a.b.x)), true, false | var_1.a.b.x, var_1.a.b.x)), var_1.c.x), ~vec4<u32>(reverseBits(1u), _wgslsmith_div_u32(1u, var_3.x << (u_input.a % 32u)), 4294967295u & firstTrailingBit(4294967295u), 15302u), Struct_4(var_1.a, countOneBits(~vec4<u32>(9208u, u_input.a, u_input.a, 0u))));
    let var_6 = abs(_wgslsmith_add_i32(func_5(Struct_3(global0.a, global0.b, true, global3.c.x), min(firstTrailingBit(vec4<u32>(var_3.x, u_input.a, 110772u, 53739u)), vec4<u32>(1u, u_input.a, 28811u, 31588u)), Struct_4(Struct_1(-396f, vec3<bool>(global2.x, var_1.a.b.x, false)), ~vec4<u32>(1u, var_3.x, 1u, u_input.a))).c.x, -(i32(-1i) * -26479i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b)), ~u_input.a);
}

