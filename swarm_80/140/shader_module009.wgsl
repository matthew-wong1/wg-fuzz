struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, true), -1i, vec2<u32>(0u, 4294967295u), -1000f, vec2<u32>(1u, 59662u)), 630f);

var<private> global1: bool;

var<private> global2: array<i32, 8> = array<i32, 8>(13525i, -29174i, -1i, 1i, 1i, -9264i, -1i, 1764i);

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(false, false, true), 0i, vec2<u32>(7422u, 1u), 1199f, vec2<u32>(13793u, 3579u)), Struct_1(vec3<bool>(true, false, true), 1i, vec2<u32>(0u, 4294967295u), 1344f, vec2<u32>(20233u, 12947u)), Struct_1(vec3<bool>(false, false, true), 1i, vec2<u32>(4294967295u, 9343u), -220f, vec2<u32>(1u, 0u)), Struct_1(vec3<bool>(true, true, false), -1i, vec2<u32>(18462u, 34147u), -1090f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<bool>(true, true, true), i32(-2147483648), vec2<u32>(4294967295u, 23410u), 1013f, vec2<u32>(1u, 4294967295u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(global3[_wgslsmith_index_u32(arg_0, 5u)], global0.b);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> i32 {
    var var_0 = arg_0.a;
    var var_1 = ~var_0.e.x;
    global3 = array<Struct_1, 5>();
    let var_2 = arg_0;
    global2 = array<i32, 8>();
    return var_0.b;
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_2(func_1(28104u, select(select(!global0.a.a.yy, select(global0.a.a.xz, vec2<bool>(global0.a.a.x, global0.a.a.x), global0.a.a.x), func_1(global0.a.e.x, vec2<bool>(global0.a.a.x, global0.a.a.x), global3[_wgslsmith_index_u32(47113u, 5u)]).a.a.yx), vec2<bool>(false, true), true), func_1(global0.a.c.x, global0.a.a.xz, Struct_1(select(global0.a.a, vec3<bool>(false, global0.a.a.x, global0.a.a.x), global0.a.a), -2147483647i, global0.a.e << (global0.a.c % vec2<u32>(32u)), _wgslsmith_f_op_f32(-global0.a.d), firstLeadingBit(global0.a.c))).a).a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, -436f)) * _wgslsmith_f_op_f32(abs(435f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1016f, global0.a.d))))))));
    let var_1 = 26522u;
    var var_2 = ~firstLeadingBit(~_wgslsmith_div_vec3_u32(~vec3<u32>(2878u, var_0.a.e.x, 1u), firstLeadingBit(vec3<u32>(var_1, 4294967295u, 1u))));
    var_0 = func_1(select(4294967295u, abs(77538u), !((arg_0 != 9973i) && any(vec3<bool>(var_0.a.a.x, false, var_0.a.a.x)))), !var_0.a.a.xz, func_1(~_wgslsmith_clamp_u32(var_1, var_2.x & 4294967295u, ~11679u), select(vec2<bool>(true, global0.a.a.x), select(vec2<bool>(false, var_0.a.a.x), vec2<bool>(false, false), vec2<bool>(global0.a.a.x, global0.a.a.x)), true), Struct_1(!global0.a.a, firstTrailingBit(global0.a.b), ~var_0.a.c, global0.a.d, global0.a.c)).a);
    var var_3 = Struct_2(func_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(var_2.x), 0u), 1u), var_0.a.a.yy, Struct_1(global0.a.a, -_wgslsmith_mod_i32(global0.a.b, global0.a.b), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 0u), var_0.a.e), var_0.b, ~func_1(23829u, vec2<bool>(false, var_0.a.a.x), Struct_1(global0.a.a, arg_0, global0.a.e, -629f, var_2.zy)).a.c)).a, 2247f);
    return vec2<bool>(func_1(~_wgslsmith_mod_u32(0u, ~0u), !vec2<bool>(var_0.a.a.x, var_0.a.a.x), global0.a).a.a.x, var_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(global0.a.a.x && false);
    var var_1 = 417f;
    var var_2 = all(vec2<bool>(any(!select(vec4<bool>(global0.a.a.x, true, var_0, global0.a.a.x), vec4<bool>(global0.a.a.x, false, true, var_0), global0.a.a.x)), 17776u <= _wgslsmith_mult_u32(abs(global0.a.c.x), global0.a.c.x)));
    let var_3 = -20410i << (_wgslsmith_clamp_u32(~99547u << (_wgslsmith_sub_u32(~55371u, global0.a.e.x) % 32u), ~abs(global0.a.e.x), ~1u) % 32u);
    var var_4 = ~(-vec2<i32>(func_2(func_1(40214u, global0.a.a.xz, Struct_1(vec3<bool>(false, true, var_0), -1i, global0.a.e, global0.a.d, vec2<u32>(global0.a.e.x, 37701u))), vec2<bool>(global0.a.a.x, global0.a.a.x), global0.a.a.x), ~u_input.a));
    global0 = func_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4973u, global0.a.c.x), ~4294967295u), !select(global0.a.a.xz, func_3(~16608i), false | select(global0.a.a.x, global0.a.a.x, false)), Struct_1(vec3<bool>(false != (true | global0.a.a.x), func_3(func_1(global0.a.c.x, vec2<bool>(true, global0.a.a.x), global3[_wgslsmith_index_u32(4294967295u, 5u)]).a.b).x, true), global2[_wgslsmith_index_u32(38548u, 8u)], global0.a.c, 223f, ~(global0.a.c & ~global0.a.c)));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.d, global0.a.d, 937f, global0.a.d) + vec4<f32>(global0.b, global0.b, global0.b, global0.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(12065u, global0.a.c.x, 4294967295u), vec3<u32>(30016u, 25355u, 24022u)), vec3<u32>(global0.a.e.x, 4294967295u, 1u) << (vec3<u32>(global0.a.e.x, global0.a.c.x, 4294967295u) % vec3<u32>(32u)))) >> ((vec3<u32>(20829u, 69136u, 28538u) & _wgslsmith_sub_vec3_u32(~vec3<u32>(49565u, 1u, 4294967295u), min(vec3<u32>(44680u, 7013u, 1u), vec3<u32>(global0.a.c.x, global0.a.c.x, global0.a.e.x)))) % vec3<u32>(32u)), ~global0.a.c.x, max(~(~vec4<u32>(global0.a.c.x, 42832u, global0.a.e.x, global0.a.c.x) << (min(vec4<u32>(1u, 0u, global0.a.c.x, 4294967295u), vec4<u32>(0u, 61548u, 4294967295u, 0u)) % vec4<u32>(32u))), vec4<u32>(global0.a.e.x >> ((global0.a.e.x << (global0.a.e.x % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.e.x, 21576u), global0.a.e), _wgslsmith_mult_u32(67463u, 5485u)), firstLeadingBit(_wgslsmith_mod_u32(1u, global0.a.c.x)), global0.a.e.x)), -31310i, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_4.x, 2147483647i, var_4.x), -var_4.x, _wgslsmith_sub_i32(u_input.a, global0.a.b), _wgslsmith_mult_i32(2147483647i, var_4.x)) >> (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(9241u, global0.a.e.x, 80252u, global0.a.e.x), vec4<u32>(global0.a.e.x, 0u, global0.a.e.x, global0.a.c.x), vec4<u32>(91276u, global0.a.e.x, 0u, global0.a.c.x)), abs(vec4<u32>(103292u, global0.a.e.x, global0.a.c.x, global0.a.e.x))) % vec4<u32>(32u)), -(~max(vec4<i32>(1i, global0.a.b, -58996i, global0.a.b), vec4<i32>(var_3, -33681i, 23959i, global0.a.b)))));
}

