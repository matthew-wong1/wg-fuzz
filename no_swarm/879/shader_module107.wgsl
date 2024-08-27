struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(20109i, 1i, -25438i, 0i);

var<private> global1: array<vec4<f32>, 25>;

var<private> global2: array<i32, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_5) -> bool {
    var var_0 = reverseBits(_wgslsmith_clamp_vec2_i32(u_input.b.yz, ~(~vec2<i32>(-8945i, u_input.b.x) ^ vec2<i32>(-2147483647i, -29060i)), u_input.b.xy >> (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))));
    let var_1 = u_input.b.x;
    var var_2 = arg_2.b.x;
    let var_3 = (~vec4<u32>(_wgslsmith_mod_u32(arg_2.c.b.a.a, 0u), ~arg_2.c.b.b.x, 14817u, ~arg_2.a.c) ^ ~select(~vec4<u32>(u_input.a, 16103u, 1u, arg_2.a.c), vec4<u32>(arg_2.a.c, u_input.a, u_input.a, 4294967295u) ^ vec4<u32>(arg_2.a.a, arg_2.a.c, 4294967295u, u_input.c), !vec4<bool>(arg_2.c.a, true, arg_0.x, false))) << (vec4<u32>(arg_2.c.b.a.a, firstTrailingBit(reverseBits(arg_2.c.b.a.a)), 102430u, u_input.a) % vec4<u32>(32u));
    var_2 = true;
    return select(any(!select(select(arg_2.b, arg_0, arg_2.c.a), arg_0, vec3<bool>(false, arg_2.c.a, arg_2.c.a))), !(_wgslsmith_f_op_f32(round(-1000f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-909f + 420f) + 1721f)), false);
}

fn func_2() -> i32 {
    var var_0 = Struct_4(true, Struct_2(Struct_1(u_input.a, abs(vec4<i32>(global0.x, 1i, global0.x, 0i) >> (vec4<u32>(0u, u_input.c, 4294967295u, 8479u) % vec4<u32>(32u))), _wgslsmith_sub_u32(u_input.c, u_input.c) ^ _wgslsmith_clamp_u32(u_input.a, u_input.c, u_input.a)), vec3<u32>(0u, u_input.a | 0u, ~5588u) << ((vec3<u32>(u_input.a, u_input.a, 43029u) & ~vec3<u32>(0u, 19596u, 0u)) % vec3<u32>(32u)), Struct_1(0u, reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(1u, 14u)], 0i, 0i, -1i)), u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(56203u, 20167u, 1u, 27895u), ~vec4<u32>(u_input.c, u_input.c, 42774u, u_input.a)), _wgslsmith_sub_u32(0u, u_input.a)), 14u)]));
    var var_1 = ~_wgslsmith_mult_vec2_i32(u_input.b.yy, ~(-vec2<i32>(global0.x, 40427i)));
    var var_2 = var_0.b.a;
    var var_3 = !select(!select(!vec4<bool>(var_0.a, false, var_0.a, false), !vec4<bool>(true, var_0.a, var_0.a, true), select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false))), !select(select(vec4<bool>(true, false, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, true), false), select(vec4<bool>(false, false, false, var_0.a), vec4<bool>(true, var_0.a, var_0.a, true), false), true), var_0.a & func_3(vec3<bool>(true, true, true), var_0.a, Struct_5(var_0.b.a, vec3<bool>(var_0.a, false, true), Struct_4(var_0.a, Struct_2(var_0.b.c, var_0.b.b, Struct_1(50849u, var_0.b.c.b, var_0.b.b.x), 0i)))));
    var var_4 = 1f;
    return var_2.b.x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = firstLeadingBit(vec3<i32>(-func_2(), i32(-1i) * -_wgslsmith_div_i32(1i, 39604i), ~reverseBits(_wgslsmith_sub_i32(1424i, 0i))));
    global1 = array<vec4<f32>, 25>();
    var_0 = global0.ywy;
    global2 = array<i32, 14>();
    global1 = array<vec4<f32>, 25>();
    return Struct_1(firstLeadingBit(_wgslsmith_mod_u32(19538u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(77721u, 4294967295u), u_input.a))), vec4<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1315i, -1i, -1i), min(53354i, 47989i)) ^ global0.x, _wgslsmith_div_i32(61701i, abs(firstLeadingBit(global0.x))), i32(-1i) * -global2[_wgslsmith_index_u32(42800u, 14u)]), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), vec4<bool>(false, true, false, !all(vec2<bool>(true, true))), !all(vec3<bool>(false, true, true)) || true));
    let var_1 = Struct_5(func_1(select(vec4<bool>(false, true, any(vec4<bool>(true, true, false, false)), func_3(vec3<bool>(false, true, true), false, Struct_5(var_0, vec3<bool>(false, true, false), Struct_4(true, Struct_2(var_0, vec3<u32>(u_input.c, var_0.a, 48782u), var_0, -54531i))))), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true))), Struct_4(true, Struct_2(Struct_1(~var_0.a, vec4<i32>(u_input.b.x, -22844i, global0.x, -345i), u_input.a), vec3<u32>(11608u, 12668u, 25544u) | ~vec3<u32>(1u, 53770u, u_input.c), Struct_1(27769u, max(vec4<i32>(u_input.b.x, -7619i, global0.x, var_0.b.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(48948u, 14u)])), 0u), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, -9665i, global2[_wgslsmith_index_u32(4294967295u, 14u)], 2147483647i), var_0.b))));
    var var_2 = var_1;
    global2 = array<i32, 14>();
    var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))) != 1000f;
    var var_4 = Struct_2(Struct_1(u_input.c, ~var_0.b, var_1.a.c), ~firstTrailingBit(var_2.c.b.b), func_1(vec4<bool>(true, true, var_1.c.a, var_1.c.a)), var_1.a.b.x);
    let var_5 = countOneBits(-var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b | ~(vec3<u32>(4294967295u, var_0.c, var_2.a.a) << (var_4.b % vec3<u32>(32u))), 1u, _wgslsmith_dot_vec3_i32(var_2.a.b.zww, var_1.c.b.c.b.wyz ^ (var_4.a.b.xyx & -var_2.c.b.c.b.xwy)));
}

