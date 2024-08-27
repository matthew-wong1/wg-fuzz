struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1259f, 342f);

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, -1i, -22046i);

var<private> global2: array<bool, 28>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(4294967295u, true, vec4<i32>(i32(-2147483648), 2147483647i, 44758i, -7642i)), Struct_1(1u, false, vec4<i32>(0i, 1i, -46408i, i32(-2147483648))), Struct_1(37550u, true, vec4<i32>(i32(-2147483648), 1296i, 51844i, -1i)), Struct_1(67307u, true, vec4<i32>(1i, 21750i, -46230i, 0i)), Struct_1(1u, false, vec4<i32>(-20884i, 1i, 2275i, -52105i)), Struct_1(38828u, true, vec4<i32>(-9030i, 1i, -1i, 7739i)), Struct_1(21929u, false, vec4<i32>(0i, 29285i, 5769i, -160i)), Struct_1(53948u, true, vec4<i32>(1i, -5133i, 2147483647i, 1i)), Struct_1(4294967295u, false, vec4<i32>(13116i, i32(-2147483648), 19640i, 0i)), Struct_1(1u, true, vec4<i32>(1i, 1i, 4565i, 30224i)), Struct_1(0u, false, vec4<i32>(-1i, 2147483647i, -21502i, 14484i)), Struct_1(33929u, false, vec4<i32>(i32(-2147483648), -19677i, -16517i, 2147483647i)), Struct_1(0u, true, vec4<i32>(24396i, 0i, -7670i, -55831i)), Struct_1(0u, false, vec4<i32>(2147483647i, i32(-2147483648), -1577i, i32(-2147483648))), Struct_1(1u, true, vec4<i32>(7726i, -43382i, 1141i, 10511i)), Struct_1(1u, true, vec4<i32>(8613i, 35361i, i32(-2147483648), 9636i)), Struct_1(4294967295u, true, vec4<i32>(1i, 1i, 0i, 27558i)), Struct_1(28218u, true, vec4<i32>(0i, 23135i, 19079i, 8307i)), Struct_1(15124u, true, vec4<i32>(-75035i, -3545i, 10080i, i32(-2147483648))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> vec2<u32> {
    let var_0 = arg_0;
    global3 = array<Struct_1, 19>();
    let var_1 = arg_0;
    let var_2 = global3[_wgslsmith_index_u32(4294967295u, 19u)];
    global2 = array<bool, 28>();
    return min(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a, 36854u) | ~vec2<u32>(arg_2, 4294967295u), vec2<u32>(4294967295u, _wgslsmith_mod_u32(var_2.a, arg_0.a))), u_input.b), vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_mod_u32(var_2.a, arg_0.a), 1u), u_input.d.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> i32 {
    let var_0 = global1.x;
    global2 = array<bool, 28>();
    let var_1 = Struct_1(arg_0.x, !all(vec3<bool>(!global2[_wgslsmith_index_u32(arg_0.x, 28u)], global2[_wgslsmith_index_u32(7807u, 28u)], arg_0.x != u_input.a)), firstLeadingBit(-vec4<i32>(1i, abs(5949i), global1.x, global1.x)));
    var var_2 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(~var_1.a, u_input.d.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.d.x, u_input.d.x), vec3<u32>(var_1.a, var_1.a, 21715u)))), 19u)];
    var var_3 = ~0u;
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(min(84181i, var_2.c.x), u_input.c, -firstLeadingBit(0i), var_2.c.x), vec4<i32>(var_2.c.x, -32131i, -63251i, u_input.c));
}

fn func_2() -> vec3<i32> {
    var var_0 = u_input.b;
    var var_1 = global3[_wgslsmith_index_u32(select(~(~(~(u_input.a | var_0.x))), var_0.x, -40895i >= func_4(~func_3(global3[_wgslsmith_index_u32(4294967295u, 19u)], vec2<f32>(964f, global0.x), var_0.x), all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 28u)], true))))), 19u)];
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.yz, ~(~(~vec2<u32>(4294967295u, u_input.d.x)))) << (~(~u_input.a) % 32u), 19u)];
    var var_3 = min(abs(vec2<u32>(firstLeadingBit(var_2.a), 0u)), min(~vec2<u32>(u_input.a, 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_1.a), u_input.b))) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_0.x, var_2.a)), u_input.d.xy), countOneBits(u_input.d.xx & u_input.d.xx), ~u_input.b);
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(363f, _wgslsmith_div_f32(1434f, global0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 770f) * _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-583f, -1229f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-969f, 464f), vec2<f32>(325f, 135f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -121f)), select(vec2<bool>(true, false), vec2<bool>(var_1.b, var_2.b), true))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1809f)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_2.b, global2[_wgslsmith_index_u32(var_3.x, 28u)]), var_1.b))))), !vec2<bool>(var_1.b, true)));
    return -firstTrailingBit(-(~var_2.c.xzx) >> ((vec3<u32>(27563u, var_3.x, var_2.a) ^ ~u_input.d) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<i32> {
    global1 = _wgslsmith_mod_vec3_i32(func_2(), vec3<i32>(u_input.c, ~20619i, -func_4(vec2<u32>(57148u, u_input.a), global2[_wgslsmith_index_u32(0u, 28u)] == false)));
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(15617i, -2147483647i), ~vec2<i32>(select(global1.x, global1.x, true), -29190i)) <= 2147483647i;
    let var_1 = vec3<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], false && (true && global2[_wgslsmith_index_u32(21431u, 28u)]), true)), (!any(vec4<bool>(true, var_0, false, false)) || !global2[_wgslsmith_index_u32(abs(15179u), 28u)]) & true);
    global3 = array<Struct_1, 19>();
    global1 = ~(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-1i, u_input.e, -2006i), vec3<i32>(-57105i, global1.x, u_input.c), vec3<bool>(var_0, var_0, false)), vec3<i32>(15956i, u_input.e, 31200i), select(vec3<i32>(-1i, global1.x, -14047i), vec3<i32>(1i, 1i, global1.x), global2[_wgslsmith_index_u32(u_input.a, 28u)])));
    return ~(-(~min(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, 17406i, 1i), vec4<i32>(u_input.c, 27702i, u_input.e, 18564i)), vec4<i32>(3098i, 0i, u_input.e, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2092f * _wgslsmith_f_op_f32(-365f + 558f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, global0.x))))))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * global0.x)))))), _wgslsmith_f_op_f32(select(global0.x, global0.x, false)));
    let var_1 = -355f;
    let var_2 = min(-(func_1(~vec4<u32>(15078u, 1750u, u_input.d.x, u_input.d.x)) << (select(vec4<u32>(u_input.b.x, u_input.b.x, 35138u, u_input.d.x), vec4<u32>(3338u, 32336u, 24844u, 26162u), global2[_wgslsmith_index_u32(50808u, 28u)]) % vec4<u32>(32u))), firstLeadingBit(-_wgslsmith_sub_vec4_i32(-vec4<i32>(global1.x, u_input.c, u_input.e, 7920i), func_1(vec4<u32>(u_input.b.x, 51225u, 4294967295u, 0u)))));
    global3 = array<Struct_1, 19>();
    global1 = vec3<i32>(~(-1i), u_input.c, min(0i, global1.x));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(abs(_wgslsmith_dot_vec2_u32(u_input.d.xx, ~vec2<u32>(u_input.a, 25236u)))), _wgslsmith_clamp_u32(~4294967295u, firstLeadingBit(4294967295u), firstLeadingBit(u_input.d.x ^ u_input.d.x)), 18722u), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(min(-17895i, _wgslsmith_add_i32(u_input.e, -2147483647i)), 0i, -(~u_input.c)), -select(vec3<i32>(global1.x, 2425i, -47521i), vec3<i32>(var_2.x, 5561i, 65576i), vec3<bool>(true, false, false)) ^ vec3<i32>(var_2.x, abs(-29048i), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-514f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 185f, global2[_wgslsmith_index_u32(~(~59205u), 28u)]))));
}

