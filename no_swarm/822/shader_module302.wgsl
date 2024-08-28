struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(41183u, 1u, 4294967295u), Struct_1(1u, vec4<f32>(-1101f, 953f, 898f, -261f), 1u, vec3<i32>(1i, 2147483647i, 1i)), 1u, vec3<u32>(31484u, 4182u, 1u), vec4<u32>(4294967295u, 18993u, 49751u, 41035u));

var<private> global1: vec4<f32> = vec4<f32>(-894f, 1000f, -715f, 494f);

var<private> global2: array<vec2<bool>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(global0.a >> (vec3<u32>(~abs(arg_1), arg_3.e.x, 1u) % vec3<u32>(32u)), global0.b, arg_0.b.c, global0.a, ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(arg_3.e.yzz, reverseBits(u_input.b)), ~4294967295u, firstTrailingBit(~4294967295u)));
    var var_1 = -firstLeadingBit(reverseBits(i32(-1i) * -15742i) | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2.b.d.x), arg_0.b.d.zx));
    var var_2 = arg_2;
    let var_3 = arg_2.b;
    global2 = array<vec2<bool>, 16>();
    return firstTrailingBit(var_0.a >> ((u_input.b | ~(~global0.e.zwz)) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_2(~(~(~vec3<u32>(u_input.b.x, 24862u, global0.b.a) | ~u_input.b)), global0.b, _wgslsmith_dot_vec3_u32(min(u_input.b, ~global0.d), func_3(Struct_2(firstLeadingBit(vec3<u32>(global0.e.x, 70641u, u_input.b.x)), global0.b, abs(u_input.b.x), global0.d, vec4<u32>(4294967295u, 18967u, 59351u, 83663u) << (global0.e % vec4<u32>(32u))), global0.c, Struct_2(countOneBits(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(global0.a.x, global0.b.b, u_input.b.x, vec3<i32>(global0.b.d.x, arg_0.x, global0.b.d.x)), u_input.b.x, global0.a, ~global0.e), Struct_2(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b), Struct_1(u_input.b.x, global0.b.b, 34544u, arg_0.ywy), abs(1202u), vec3<u32>(1u, 0u, 1u), global0.e))), vec3<u32>(_wgslsmith_dot_vec3_u32(min(~u_input.b, firstLeadingBit(u_input.b)), global0.d), ~func_3(Struct_2(u_input.b, Struct_1(0u, vec4<f32>(-320f, global1.x, global0.b.b.x, -1000f), global0.a.x, vec3<i32>(43494i, u_input.a, arg_0.x)), global0.e.x, vec3<u32>(42789u, 0u, global0.c), global0.e), u_input.b.x, Struct_2(vec3<u32>(4294967295u, 60762u, u_input.b.x), Struct_1(global0.b.c, vec4<f32>(global0.b.b.x, 1595f, global1.x, global1.x), 0u, global0.b.d), 51244u, global0.d, global0.e), Struct_2(u_input.b, global0.b, 67576u, vec3<u32>(u_input.b.x, 13143u, u_input.b.x), vec4<u32>(global0.b.a, u_input.b.x, global0.b.c, u_input.b.x))).x, 48777u), global0.e);
    global2 = array<vec2<bool>, 16>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) - _wgslsmith_f_op_f32(-1000f * global1.x)), global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1932f)) - global0.b.b.x), global1.x, -841f);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b.b, global0.b.b) - _wgslsmith_f_op_vec4_f32(global0.b.b + vec4<f32>(2551f, global1.x, global0.b.b.x, 1572f)))), _wgslsmith_f_op_vec4_f32(step(global0.b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, 233f, global0.b.b.x, -1393f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b.x, global1.x, -692f, global0.b.b.x)))))));
    var var_0 = arg_0.x;
    return global0.b;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    var var_0 = Struct_2(u_input.b, func_2(vec4<i32>(_wgslsmith_sub_i32(1i, 1410i) & global0.b.d.x, ~arg_0 | _wgslsmith_add_i32(-1i, arg_0), u_input.a, 1i)), abs(abs(global0.e.x) ^ _wgslsmith_add_u32(global0.d.x, 73648u)) >> (_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), global0.d), global0.e.x) % 32u), ~_wgslsmith_div_vec3_u32(~(~global0.a), _wgslsmith_sub_vec3_u32(~global0.a, global0.e.ywx << (u_input.b % vec3<u32>(32u)))), ~vec4<u32>(4294967295u, _wgslsmith_div_u32(0u, func_3(Struct_2(vec3<u32>(u_input.b.x, global0.a.x, u_input.b.x), global0.b, u_input.b.x, global0.a, vec4<u32>(global0.e.x, 63240u, 8604u, 1u)), global0.e.x, Struct_2(global0.d, global0.b, global0.d.x, u_input.b, vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x)), Struct_2(vec3<u32>(4294967295u, global0.e.x, u_input.b.x), Struct_1(u_input.b.x, vec4<f32>(global1.x, global1.x, 828f, 264f), u_input.b.x, vec3<i32>(global0.b.d.x, u_input.a, global0.b.d.x)), 1u, vec3<u32>(57741u, global0.e.x, global0.c), global0.e)).x), 4294967295u, 1u));
    let var_1 = -3667i;
    var var_2 = Struct_1(_wgslsmith_add_u32(~(abs(4294967295u) ^ _wgslsmith_dot_vec2_u32(global0.d.yz, vec2<u32>(26067u, global0.d.x))), var_0.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_div_f32(var_0.b.b.x, -280f)), var_0.b.b.x, var_0.b.b.x, global0.b.b.x), var_0.b.b, select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), false), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))))), 4294967295u, -(var_0.b.d >> (reverseBits(~global0.a) % vec3<u32>(32u))));
    return ~global0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 16>();
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.b.b.x)))))), global1.x, -1157f, global1.x) * global0.b.b);
    global2 = array<vec2<bool>, 16>();
    var var_0 = Struct_2(countOneBits(u_input.b), global0.b, ~u_input.b.x, vec3<u32>(102483u, 0u, ~(~50587u) | firstTrailingBit(18238u)), func_1(-_wgslsmith_mult_i32(select(0i, global0.b.d.x, false), u_input.a)));
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(abs(global0.d), firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(var_0.d.x, global0.b.c), u_input.b.x, _wgslsmith_div_u32(571u, 28630u)))), var_0.b, firstLeadingBit(reverseBits(4294967295u)), min(~vec3<u32>(firstLeadingBit(u_input.b.x), global0.c, _wgslsmith_clamp_u32(u_input.b.x, 32945u, u_input.b.x)), firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(34697u, 1u, 4294967295u), vec3<u32>(1u, var_0.c, global0.b.a)))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global0.a.zz, global0.d.xx), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), var_0.a.zz, vec2<u32>(1u, u_input.b.x))), u_input.b.yx), 22284u, firstLeadingBit(global0.a.x), ~(~25144u & _wgslsmith_sub_u32(1u, global0.b.c))));
    var var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec2<u32>(1u, u_input.b.x)), ~abs(var_0.a.yy) & ~countOneBits(var_1.e.xz), global2[_wgslsmith_index_u32(u_input.b.x, 16u)]));
}

