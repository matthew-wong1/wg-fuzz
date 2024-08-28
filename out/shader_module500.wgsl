struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(false, ~max(vec4<i32>(321i, abs(1i), _wgslsmith_div_i32(u_input.a, -20116i), 1i), -arg_0.b), ~(~_wgslsmith_mod_u32(14762u, 1u)), u_input.b.x, min(~min(max(arg_0.c, arg_0.c), 29909u), _wgslsmith_mod_u32(arg_0.c, ~arg_0.c) ^ firstLeadingBit(arg_0.c)));
    let var_1 = max(var_0.b.zw, _wgslsmith_clamp_vec2_i32(~vec2<i32>(var_0.b.x | arg_0.b.x, -arg_0.b.x), vec2<i32>(var_0.d ^ -84065i, firstLeadingBit(~arg_0.b.x)), max(vec2<i32>(39463i, firstTrailingBit(arg_0.b.x)), vec2<i32>(-43862i, ~0i))));
    var var_2 = vec2<bool>(any(!select(!vec3<bool>(var_0.a, false, global1.x), !vec3<bool>(false, arg_0.a, true), global1.x)), true);
    var var_3 = ~vec3<u32>(arg_0.e, _wgslsmith_add_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.c, arg_0.e, 1u), vec3<u32>(arg_0.e, 143870u, 8004u)), vec3<u32>(51155u, 17619u, var_0.e) ^ vec3<u32>(arg_0.c, 3735u, arg_0.c))), 22914u);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1138f, 1022f)))) - 277f), _wgslsmith_f_op_f32(f32(-1f) * -1681f)));
    return countOneBits(var_3.yz);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = select(select(select(select(vec2<bool>(global1.x, true), !vec2<bool>(global1.x, global1.x), global1.x && true), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), global1.x), false), vec2<bool>(false, all(vec3<bool>(global1.x, false, global1.x))), false), vec2<bool>(76135u != (~62329u ^ ~arg_0), global1.x), select(vec2<bool>(all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), true)), any(global0[_wgslsmith_index_u32(~4294967295u, 16u)])), vec2<bool>(true, false), select(vec2<bool>(true, global1.x), !vec2<bool>(false, global1.x), vec2<bool>(true, true))));
    global0 = array<vec4<bool>, 16>();
    return Struct_1(global1.x, vec4<i32>(u_input.b.x, u_input.c.x, -32940i, u_input.b.x), ~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(24301u, arg_0), vec2<u32>(23936u, 4294967295u), true), func_3(Struct_1(global1.x, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.a), arg_0, u_input.b.x, arg_0))), _wgslsmith_div_i32(-1i, -_wgslsmith_clamp_i32(~u_input.c.x, -2147483647i, 0i)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(37692u, arg_0))), _wgslsmith_add_vec2_u32(~max(vec2<u32>(arg_0, 14756u), vec2<u32>(arg_0, arg_0)), ~vec2<u32>(48859u, arg_0))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    global0 = array<vec4<bool>, 16>();
    global1 = vec2<bool>(true, !any(vec2<bool>(all(arg_2.yy), !global1.x)));
    var var_0 = vec2<i32>(u_input.b.x, ~u_input.b.x);
    var var_1 = func_2(4294967295u);
    var var_2 = _wgslsmith_f_op_f32(ceil(2333f));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-12916i, -(i32(-1i) * -arg_1.b.x)), u_input.b.zz);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-1031f - -256f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -812f, var_0)))) - vec3<f32>(var_0, var_0, -700f)));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.c, arg_1.e), ~vec2<u32>(~_wgslsmith_mult_u32(arg_0.c, arg_2.e), ~_wgslsmith_mult_u32(arg_2.c, 13120u)));
    var var_3 = true;
    var var_4 = _wgslsmith_mod_u32(var_2.x, arg_1.c);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(true, firstTrailingBit(-(~vec4<i32>(u_input.a, u_input.a, 18608i, u_input.a))), _wgslsmith_mod_u32(1u, ~(~57617u)), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(10226i, -36701i, 17185i), u_input.c)), select(53645u, _wgslsmith_sub_u32(4936u, 0u), !global1.x) & _wgslsmith_mult_u32(~1u, min(0u, 4294967295u))), func_4(u_input.a << ((_wgslsmith_add_u32(1u, 1u) >> (1u % 32u)) % 32u), Struct_1(global1.x, vec4<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, -12155i), ~u_input.b.x, func_1(132396u, Struct_1(global1.x, vec4<i32>(-26272i, 18316i, 51587i, -16005i), 9307u, u_input.c.x, 1u), vec3<bool>(global1.x, global1.x, false))), 1u, 2147483647i ^ u_input.a, ~_wgslsmith_div_u32(1u, 39538u)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(-1000f - -1414f)), 504f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(775f)), _wgslsmith_f_op_f32(-1397f * -1000f)), -1567f), func_2(0u)), Struct_1(true, vec4<i32>(u_input.a, u_input.b.x, u_input.a, -u_input.b.x), ~(~(~1u)), select(func_1(~47440u, func_4(u_input.b.x, Struct_1(global1.x, vec4<i32>(28316i, u_input.a, 0i, u_input.a), 64043u, u_input.a, 0u), vec4<f32>(125f, 1476f, -137f, 819f), Struct_1(false, vec4<i32>(u_input.a, u_input.a, u_input.c.x, 2147483647i), 34110u, -2147483647i, 1u)), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, global1.x))), u_input.b.x, true), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, 1u)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(14267u, 0u), vec2<u32>(34945u, 1u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), ~firstLeadingBit(vec2<u32>(11406u, 124809u)))));
    global0 = array<vec4<bool>, 16>();
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(876f, 686f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -807f)))), vec3<f32>(-811f, _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(2104f + _wgslsmith_f_op_f32(sign(-790f))))))));
    var var_2 = Struct_1(!(func_4(1i, func_5(var_0, Struct_1(global1.x, vec4<i32>(2147483647i, var_0.d, var_0.b.x, var_0.b.x), var_0.c, 61551i, var_0.e), var_0), vec4<f32>(-130f, 748f, -1415f, var_1.x), func_2(var_0.c)).e < 0u), _wgslsmith_add_vec4_i32(var_0.b, vec4<i32>(12543i, -28130i, var_0.b.x << (_wgslsmith_add_u32(15281u, 47664u) % 32u), 1i)), 614u, _wgslsmith_sub_i32(i32(-1i) * -21805i, 1i), var_0.c);
    let var_3 = !(~(~1u) < (_wgslsmith_div_u32(~21767u, abs(var_2.e)) | 118058u));
    let var_4 = func_2(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_sub_i32(~19396i, var_2.b.x), var_4.b.x, var_0.b.x | firstTrailingBit(func_5(var_0, var_4, Struct_1(var_2.a, vec4<i32>(var_2.d, -31060i, var_2.b.x, var_0.d), 0u, var_4.b.x, var_2.c)).b.x), -(countOneBits(28885i) | ~var_0.b.x)), _wgslsmith_clamp_vec2_i32(-(u_input.b.zz << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.c, 0u), vec2<u32>(0u, 1u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(min(var_2.b.yw >> (vec2<u32>(var_0.e, 0u) % vec2<u32>(32u)), abs(var_4.b.xy)), var_4.b.zz), (func_2(70780u).b.xw >> (min(vec2<u32>(var_0.e, var_4.e), vec2<u32>(var_0.c, var_0.e)) % vec2<u32>(32u))) ^ vec2<i32>(_wgslsmith_mod_i32(var_0.d, 2455i), ~(-15791i))), var_1.x, vec4<u32>(0u, 79068u, func_2(var_0.e).e, func_2(0u).c), ~_wgslsmith_mod_vec4_u32(min(~vec4<u32>(var_2.c, var_2.e, 28767u, var_2.c), vec4<u32>(42680u, 13290u, var_4.e, var_0.c)), vec4<u32>(var_0.c << (4294967295u % 32u), ~var_4.c, 1u, var_2.e)));
}

