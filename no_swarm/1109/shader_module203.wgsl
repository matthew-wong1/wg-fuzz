struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 9> = array<f32, 9>(658f, 706f, -1570f, 1298f, 553f, -1259f, 805f, -428f, -810f);

var<private> global2: array<vec3<f32>, 11>;

var<private> global3: vec2<bool>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = arg_3;
    return vec2<u32>(35556u, ~(reverseBits(arg_2.a.x) | _wgslsmith_add_u32(u_input.b.x, 23219u))) ^ _wgslsmith_add_vec2_u32(select(vec2<u32>(0u | arg_1, _wgslsmith_dot_vec2_u32(arg_3.a.zy, vec2<u32>(4294967295u, var_0.a.x))), _wgslsmith_mult_vec2_u32(firstTrailingBit(global0.a.yz), u_input.b.zy), any(arg_0.xy)), ~min(_wgslsmith_mod_vec2_u32(global0.a.xz, u_input.b.yz), reverseBits(vec2<u32>(arg_3.a.x, arg_3.a.x))));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global0 = arg_0;
    return u_input.b.zz | ((_wgslsmith_sub_vec2_u32(vec2<u32>(50816u, 1u), u_input.b.zx) ^ (~vec2<u32>(4294967295u, u_input.b.x) & func_3(vec3<bool>(true, true, global3.x), global0.a.x, Struct_1(vec4<u32>(arg_0.a.x, u_input.b.x, 25167u, 79082u), -2147483647i, u_input.a.x, u_input.a), arg_0))) ^ abs(vec2<u32>(func_3(vec3<bool>(true, global3.x, global3.x), u_input.b.x, arg_0, arg_0).x, 0u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(arg_2.d.x);
    var var_1 = -378f;
    var var_2 = func_2(arg_0);
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, global1[_wgslsmith_index_u32(0u, 9u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-247f, global1[_wgslsmith_index_u32(arg_0.a.x, 9u)])))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 9u)])), global1[_wgslsmith_index_u32(1u, 9u)])));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    global3 = select(arg_2.zy, select(vec2<bool>(global3.x, true), select(arg_2.zx, arg_2.zz, vec2<bool>(all(arg_2.zx), !global3.x)), !vec2<bool>(arg_2.x, global0.a.x < arg_0.a.x)), true);
    global0 = func_1(func_1(Struct_1(vec4<u32>(_wgslsmith_clamp_u32(0u, 35968u, u_input.b.x), _wgslsmith_div_u32(1u, 20671u), abs(arg_0.a.x), u_input.b.x), ~global0.d.x, -u_input.a.x, vec4<i32>(global0.c, _wgslsmith_mult_i32(arg_1.b, -1i), global0.d.x, ~arg_0.d.x)), Struct_1(max(vec4<u32>(arg_0.a.x, u_input.b.x, arg_1.a.x, u_input.b.x), vec4<u32>(arg_1.a.x, arg_0.a.x, u_input.b.x, 0u)), countOneBits(~arg_1.b), 67187i, reverseBits(vec4<i32>(-1i, global0.d.x, global0.c, 31511i))), func_1(Struct_1(arg_0.a, i32(-1i) * -41086i, arg_1.c, -vec4<i32>(global0.c, 1i, arg_0.c, 35791i)), func_1(func_1(Struct_1(vec4<u32>(37304u, 121798u, 56544u, 10460u), 2147483647i, -1i, arg_0.d), Struct_1(arg_0.a, global0.d.x, u_input.a.x, u_input.a), Struct_1(arg_1.a, global0.b, -1458i, vec4<i32>(u_input.a.x, -1i, arg_1.d.x, -71788i))), Struct_1(vec4<u32>(4294967295u, global0.a.x, 1u, arg_1.a.x), arg_1.d.x, -38898i, arg_0.d), func_1(arg_0, Struct_1(vec4<u32>(0u, arg_0.a.x, 1u, 61062u), 22454i, global0.b, vec4<i32>(-59158i, arg_0.d.x, global0.c, arg_1.c)), arg_1)), arg_1)), func_1(func_1(Struct_1(arg_1.a, arg_1.d.x, 1i, _wgslsmith_clamp_vec4_i32(arg_0.d, vec4<i32>(1i, arg_1.b, global0.d.x, arg_1.b), u_input.a)), func_1(func_1(Struct_1(vec4<u32>(u_input.b.x, 1u, 4294967295u, global0.a.x), -16244i, 31594i, global0.d), Struct_1(arg_1.a, 1i, -34065i, vec4<i32>(-38445i, global0.c, -32275i, u_input.a.x)), arg_0), func_1(Struct_1(vec4<u32>(arg_0.a.x, u_input.b.x, u_input.b.x, 85651u), 1i, -39726i, u_input.a), Struct_1(arg_0.a, arg_0.d.x, 2147483647i, u_input.a), arg_0), arg_1), func_1(Struct_1(global0.a, -1i, 0i, arg_0.d), func_1(arg_0, arg_1, arg_1), func_1(Struct_1(global0.a, 0i, arg_1.b, vec4<i32>(arg_0.c, u_input.a.x, arg_1.d.x, u_input.a.x)), Struct_1(arg_0.a, -15825i, -1i, arg_1.d), Struct_1(vec4<u32>(arg_0.a.x, 1u, 1u, u_input.b.x), u_input.a.x, global0.b, arg_0.d)))), Struct_1(func_1(arg_1, arg_1, arg_0).a << (firstTrailingBit(arg_1.a) % vec4<u32>(32u)), -6480i, 0i, -(global0.d & vec4<i32>(-2147483647i, 20246i, -55159i, 36380i))), arg_0), arg_0);
    global1 = array<f32, 9>();
    var var_0 = ~_wgslsmith_mult_vec2_i32(-arg_1.d.zx >> ((~vec2<u32>(4294967295u, 69431u) << (firstTrailingBit(vec2<u32>(48710u, u_input.b.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_0.d.wx);
    var var_1 = global1[_wgslsmith_index_u32(~arg_0.a.x, 9u)];
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec3<f32>, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_1.a.x, 9u)])), global1[_wgslsmith_index_u32(reverseBits(67865u), 9u)]))) - vec2<f32>(global1[_wgslsmith_index_u32(~global0.a.x, 9u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a.x, 9u)] - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b.x, 9u)]))))));
    var var_1 = Struct_1(~min(_wgslsmith_mult_vec4_u32(~arg_1.a, vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.b.x, arg_0.a.x)), func_1(arg_2, func_4(Struct_1(arg_0.a, arg_2.c, 20837i, vec4<i32>(-2147483647i, -38824i, -41641i, arg_1.c)), arg_1, vec3<bool>(false, false, global3.x)), Struct_1(vec4<u32>(global0.a.x, arg_2.a.x, arg_1.a.x, arg_1.a.x), 2147483647i, -26278i, vec4<i32>(arg_0.c, -16009i, arg_1.c, -2147483647i))).a), arg_2.c, arg_1.c, countOneBits(u_input.a));
    let var_2 = func_1(arg_2, func_4(Struct_1(var_1.a >> (countOneBits(vec4<u32>(59690u, arg_2.a.x, arg_2.a.x, arg_1.a.x)) % vec4<u32>(32u)), min(~var_1.c, var_1.c), reverseBits(countOneBits(arg_0.b)), var_1.d), func_4(arg_0, arg_1, !(!vec3<bool>(global3.x, true, true))), vec3<bool>(true, false, all(!vec3<bool>(global3.x, global3.x, true)))), arg_1);
    let var_3 = func_4(Struct_1(vec4<u32>(~arg_1.a.x, _wgslsmith_mult_u32(var_2.a.x, 0u), 10085u, ~global0.a.x) & ~(~var_1.a), _wgslsmith_dot_vec2_i32(vec2<i32>(~var_2.c, _wgslsmith_sub_i32(9774i, u_input.a.x)), firstTrailingBit(var_1.d.xx)), -2147483647i, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1528i, 1i, -43571i, arg_0.b), ~var_1.d), -(~39554i), ~(-2147483647i << (0u % 32u)), ~1i)), func_4(func_1(func_4(Struct_1(arg_2.a, 19709i, -1i, global0.d), func_1(Struct_1(vec4<u32>(0u, var_2.a.x, 43745u, 28200u), 0i, var_1.b, vec4<i32>(global0.d.x, 1i, arg_0.c, arg_2.d.x)), arg_1, Struct_1(vec4<u32>(arg_2.a.x, 4294967295u, 1u, 14313u), -10823i, var_1.b, arg_1.d)), vec3<bool>(global3.x, global3.x, true)), arg_2, Struct_1(func_1(arg_0, Struct_1(arg_0.a, arg_2.b, var_1.b, vec4<i32>(-2147483647i, global0.c, -1i, 1i)), Struct_1(vec4<u32>(global0.a.x, 0u, var_1.a.x, 4294967295u), global0.b, -18263i, global0.d)).a, -20749i, abs(arg_0.b), vec4<i32>(-13307i, global0.c, var_1.d.x, -7909i))), func_1(func_4(func_4(var_2, arg_2, vec3<bool>(true, true, false)), Struct_1(vec4<u32>(var_2.a.x, var_1.a.x, 3214u, 0u), var_1.b, -1i, global0.d), vec3<bool>(global3.x, global3.x, false)), Struct_1(var_2.a, var_2.c, ~var_1.c, vec4<i32>(0i, 0i, 2147483647i, -2147483647i)), arg_1), select(!vec3<bool>(false, global3.x, true), !(!vec3<bool>(true, true, global3.x)), vec3<bool>(any(vec2<bool>(true, true)), false, false))), vec3<bool>(all(select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, true), select(vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), global3.x))), all(select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, true, false))) & true, global3.x));
    return Struct_1(~arg_1.a, i32(-1i) * -9745i, 33758i, var_3.d ^ _wgslsmith_mod_vec4_i32(min(vec4<i32>(var_2.d.x, u_input.a.x, 2147483647i, global0.d.x), var_2.d), arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(~(~vec4<u32>(u_input.b.x, 1u, 0u, 0u)), _wgslsmith_div_i32(~abs(-64903i), i32(-1i) * -1i), abs(-28487i), select(select(firstLeadingBit(u_input.a), reverseBits(vec4<i32>(0i, -2147483647i, 13955i, global0.d.x)), global0.d.x >= -28960i), ~firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, global0.c)), select(!vec4<bool>(false, global3.x, false, global3.x), !vec4<bool>(global3.x, false, true, false), select(vec4<bool>(false, false, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, true, false))))), func_4(Struct_1(select(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 77327u) >> (vec4<u32>(41058u, global0.a.x, 4294967295u, global0.a.x) % vec4<u32>(32u)), min(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 4245u), global0.a), !global3.x), -18516i, -9565i, select(u_input.a, u_input.a, true)), func_1(Struct_1(firstTrailingBit(vec4<u32>(4294967295u, global0.a.x, u_input.b.x, 4294967295u)), -2147483647i, -49972i, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global0.d.x, u_input.a.x, u_input.a.x), u_input.a)), Struct_1(select(vec4<u32>(13883u, 4294967295u, 4294967295u, u_input.b.x), global0.a, false), i32(-1i) * -1i, 36746i, _wgslsmith_mod_vec4_i32(vec4<i32>(global0.c, -1i, -2147483647i, -4825i), u_input.a)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(27037u, u_input.b.x, u_input.b.x, 65722u), global0.a, vec4<u32>(global0.a.x, 0u, 0u, global0.a.x)), global0.b, -1i, abs(u_input.a))), select(vec3<bool>(global3.x && global3.x, select(true, false, global3.x), false), !vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, true, true))), func_4(func_1(Struct_1(min(global0.a, vec4<u32>(global0.a.x, 99677u, 52938u, 48914u)), -4529i, func_1(Struct_1(global0.a, 14712i, 1i, vec4<i32>(15610i, global0.b, u_input.a.x, 11021i)), Struct_1(global0.a, 7639i, u_input.a.x, vec4<i32>(10321i, 4540i, u_input.a.x, u_input.a.x)), Struct_1(vec4<u32>(54056u, 116712u, 32242u, global0.a.x), u_input.a.x, -1i, u_input.a)).b, global0.d), func_4(func_4(Struct_1(global0.a, -26718i, u_input.a.x, global0.d), Struct_1(vec4<u32>(global0.a.x, u_input.b.x, u_input.b.x, 1u), 32506i, 1i, global0.d), vec3<bool>(true, global3.x, global3.x)), func_4(Struct_1(global0.a, global0.b, global0.c, u_input.a), Struct_1(global0.a, 13471i, global0.b, u_input.a), vec3<bool>(false, global3.x, true)), vec3<bool>(global3.x, false, true)), func_4(func_1(Struct_1(vec4<u32>(8042u, 1u, global0.a.x, 4294967295u), -24428i, global0.c, vec4<i32>(global0.c, global0.c, 0i, u_input.a.x)), Struct_1(global0.a, 1i, u_input.a.x, u_input.a), Struct_1(vec4<u32>(33958u, 4294967295u, global0.a.x, u_input.b.x), 2147483647i, -20943i, global0.d)), Struct_1(vec4<u32>(global0.a.x, global0.a.x, u_input.b.x, 4294967295u), 1i, global0.d.x, global0.d), !vec3<bool>(global3.x, global3.x, false))), func_1(Struct_1(global0.a, -2147483647i, -11180i, ~vec4<i32>(21695i, -13532i, -1i, -1i)), func_4(func_1(Struct_1(global0.a, global0.b, 7738i, u_input.a), Struct_1(vec4<u32>(0u, 1u, global0.a.x, u_input.b.x), 34507i, 2147483647i, vec4<i32>(-12341i, u_input.a.x, u_input.a.x, global0.c)), Struct_1(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), -40419i, 0i, vec4<i32>(2147483647i, 18965i, global0.c, u_input.a.x))), func_4(Struct_1(vec4<u32>(18534u, u_input.b.x, u_input.b.x, 0u), -2147483647i, -39988i, global0.d), Struct_1(global0.a, global0.d.x, global0.b, u_input.a), vec3<bool>(global3.x, false, global3.x)), vec3<bool>(false, global3.x, false)), Struct_1(global0.a, global0.d.x, _wgslsmith_clamp_i32(global0.b, 1i, u_input.a.x), vec4<i32>(u_input.a.x, global0.b, global0.d.x, u_input.a.x))), select(!select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, true, global3.x), false), !(!vec3<bool>(global3.x, global3.x, global3.x)), !(!global3.x))));
    global1 = array<f32, 9>();
    let var_0 = func_4(func_4(Struct_1(countOneBits(vec4<u32>(1u, global0.a.x, 4294967295u, 4294967295u) ^ vec4<u32>(u_input.b.x, global0.a.x, 1u, global0.a.x)), u_input.a.x ^ global0.d.x, _wgslsmith_dot_vec2_i32(u_input.a.yx, func_5(Struct_1(vec4<u32>(u_input.b.x, 1552u, u_input.b.x, u_input.b.x), 1i, u_input.a.x, vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x)), Struct_1(vec4<u32>(u_input.b.x, 1u, global0.a.x, 72108u), global0.d.x, 24538i, u_input.a), Struct_1(vec4<u32>(global0.a.x, 0u, u_input.b.x, 1u), u_input.a.x, u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, -14755i, -2147483647i))).d.xy), -global0.d), func_5(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(35042u, global0.a.x, global0.a.x, 1u), vec4<u32>(4294967295u, 1u, global0.a.x, u_input.b.x)), -2147483647i, -global0.c, -u_input.a), func_1(Struct_1(global0.a, global0.c, u_input.a.x, u_input.a), func_1(Struct_1(global0.a, global0.d.x, -2147483647i, vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), Struct_1(vec4<u32>(4294967295u, 885u, u_input.b.x, 7100u), u_input.a.x, -1i, global0.d), Struct_1(vec4<u32>(63111u, 1u, 26946u, global0.a.x), global0.b, u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.c))), func_4(Struct_1(global0.a, -8587i, -24240i, u_input.a), Struct_1(vec4<u32>(u_input.b.x, 4294967295u, global0.a.x, u_input.b.x), u_input.a.x, u_input.a.x, vec4<i32>(179i, global0.c, -1i, u_input.a.x)), vec3<bool>(global3.x, true, global3.x))), Struct_1(~vec4<u32>(global0.a.x, u_input.b.x, 1u, 88065u), u_input.a.x >> (global0.a.x % 32u), max(-11311i, global0.d.x), -u_input.a)), select(!vec3<bool>(global3.x, false, true), select(vec3<bool>(true, true, true), !vec3<bool>(global3.x, global3.x, true), true), all(select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, false, global3.x, true))))), func_4(func_5(func_4(Struct_1(vec4<u32>(1u, u_input.b.x, u_input.b.x, global0.a.x), -1i, global0.c, vec4<i32>(2147483647i, -23798i, -2147483647i, 51467i)), func_1(Struct_1(global0.a, u_input.a.x, 0i, u_input.a), Struct_1(vec4<u32>(38603u, global0.a.x, global0.a.x, 4294967295u), u_input.a.x, -2147483647i, u_input.a), Struct_1(vec4<u32>(8044u, 19366u, 1u, 21552u), global0.b, u_input.a.x, global0.d)), !vec3<bool>(global3.x, true, global3.x)), Struct_1(~vec4<u32>(global0.a.x, 40760u, 124339u, u_input.b.x), global0.c ^ global0.b, ~u_input.a.x, vec4<i32>(u_input.a.x, 44009i, global0.c, u_input.a.x)), func_5(func_4(Struct_1(global0.a, -49472i, global0.d.x, u_input.a), Struct_1(vec4<u32>(4294967295u, u_input.b.x, 37406u, 1u), -24229i, 1i, vec4<i32>(u_input.a.x, global0.c, global0.c, global0.c)), vec3<bool>(false, true, false)), func_1(Struct_1(global0.a, global0.b, u_input.a.x, global0.d), Struct_1(vec4<u32>(global0.a.x, u_input.b.x, global0.a.x, 17318u), global0.b, global0.c, u_input.a), Struct_1(global0.a, -23997i, global0.d.x, global0.d)), func_5(Struct_1(global0.a, -2147483647i, u_input.a.x, u_input.a), Struct_1(global0.a, -32506i, global0.d.x, global0.d), Struct_1(vec4<u32>(global0.a.x, u_input.b.x, u_input.b.x, 1u), 2147483647i, 23588i, vec4<i32>(u_input.a.x, 0i, -1i, 2147483647i))))), func_5(Struct_1(global0.a, u_input.a.x & 0i, ~(-1i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 19987i)), func_4(Struct_1(vec4<u32>(1u, 4294967295u, u_input.b.x, 0u), global0.c, -5067i, vec4<i32>(u_input.a.x, -1i, 0i, -1i)), Struct_1(global0.a, 1i, global0.b, u_input.a), select(vec3<bool>(false, false, global3.x), vec3<bool>(global3.x, global3.x, false), vec3<bool>(true, false, true))), Struct_1(global0.a, min(u_input.a.x, -1i), 0i, global0.d ^ vec4<i32>(6652i, -1i, 9241i, -16349i))), vec3<bool>(global3.x, true, true)), vec3<bool>(true || (-143f == _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(5742u, 9u)], -1580f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 9u)] + -753f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(8017u, 9u)]))), true));
    let var_1 = func_5(var_0, Struct_1(abs(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, global0.a.x, 42620u, global0.a.x), global0.a))), 0i, var_0.c, vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a.x, global0.b, -12916i)), Struct_1(~abs(vec4<u32>(12795u, 26990u, 0u, 1u)), var_0.c, ~940i, countOneBits(global0.d << (var_0.a % vec4<u32>(32u)))));
    let var_2 = select(false, false, all(!vec4<bool>(!global3.x, !global3.x, all(vec2<bool>(global3.x, global3.x)), u_input.a.x < var_0.d.x)));
    global1 = array<f32, 9>();
    let var_3 = ~u_input.a.ww << (vec2<u32>(u_input.b.x, abs(~4294967295u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3 << (vec2<u32>(96934u, 102112u) % vec2<u32>(32u)));
}

