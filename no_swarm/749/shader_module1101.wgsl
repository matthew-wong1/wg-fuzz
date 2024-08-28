struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<u32> {
    return countOneBits(vec2<u32>(select(17247u, 0u, false), 4294967295u));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_3(firstTrailingBit(vec2<u32>(~0u, 1u)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4294967295u), ~vec2<u32>(1u, 1u), abs(reverseBits(vec2<u32>(62621u, u_input.c)))), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -276f, -353f, 245f), vec4<f32>(-967f, -1862f, 1558f, -938f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1064f, -531f, 1205f, 3026f), vec4<f32>(-1000f, 422f, 421f, -912f), vec4<bool>(true, true, false, true)))), ~vec3<i32>(-1i, arg_0.x, 5820i), vec3<bool>(true, true, true), ~vec3<u32>(u_input.c, 27082u, 69532u), -898f), func_3(), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<u32>(7699u, 4294967295u, 70776u)), u_input.c, 52694u, ~1u), vec4<u32>(~u_input.c, ~22079u, reverseBits(14166u), u_input.c | u_input.c)), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, 31583u, 1u))), 738f), _wgslsmith_dot_vec4_i32(~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, arg_0.x, 1i), vec4<i32>(1i, 2147483647i, arg_0.x, 42278i), vec4<i32>(u_input.a, arg_0.x, arg_0.x, u_input.b.x)), vec4<i32>(-2147483647i, -35832i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, countOneBits(-80945i), u_input.a, i32(-1i) * -1i), ~(vec4<i32>(arg_0.x, arg_0.x, 1i, -44342i) ^ vec4<i32>(0i, arg_0.x, 2147483647i, 1i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.e, var_0.b.a.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.e, var_0.b.e))))))));
    global0 = array<Struct_2, 12>();
    var var_2 = -firstLeadingBit(~_wgslsmith_dot_vec3_i32(var_0.b.a.b, vec3<i32>(arg_0.x, var_0.c, arg_0.x))) | var_0.b.a.b.x;
    global0 = array<Struct_2, 12>();
    return Struct_3(countOneBits(~var_0.b.d.yy), var_0.b, _wgslsmith_mult_i32(select(-2147483647i, -1i, var_0.b.a.c.x), _wgslsmith_mod_i32(-arg_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, var_0.b.a.b.x, arg_0.x, -1i), vec4<i32>(-11316i, var_0.c, u_input.b.x, var_0.b.a.b.x)), ~vec4<i32>(2640i, arg_0.x, u_input.b.x, arg_0.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b.a.a.xx - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.e), _wgslsmith_f_op_f32(sign(459f))));
    global0 = array<Struct_2, 12>();
    let var_1 = vec2<bool>(true, arg_1 < 15492u);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(553f + arg_0.b.e) - _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-621f - _wgslsmith_f_op_f32(ceil(118f)))))))));
    global0 = array<Struct_2, 12>();
    return func_3().x & reverseBits(arg_0.a.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = ~(-56202i >> (1u % 32u)) << (func_4(func_2(reverseBits(-vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), _wgslsmith_clamp_u32((u_input.c << (15794u % 32u)) ^ 1u, 32916u, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 44894u, u_input.c, u_input.c)), 1u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, 1u)))) % 32u);
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_1 = Struct_3(~(~vec2<u32>(firstTrailingBit(u_input.c), min(4294967295u, u_input.c))), func_2(vec3<i32>(_wgslsmith_div_i32(21811i, _wgslsmith_add_i32(var_0, 20571i)), u_input.a, -29831i)).b, u_input.a);
    return var_1.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_5 {
    var var_0 = u_input.b;
    var var_1 = countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 2147483647i, -1i, var_0.x), vec4<i32>(u_input.b.x << (8681u % 32u), arg_0.b.x << (u_input.c % 32u), _wgslsmith_div_i32(38789i, -38585i), ~2147483647i)), firstLeadingBit(vec4<i32>(u_input.b.x, arg_0.b.x, var_0.x, -53854i)) >> (vec4<u32>(_wgslsmith_mod_u32(0u, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 54261u, 48432u, 6067u), vec4<u32>(0u, arg_0.d.x, arg_0.d.x, u_input.c)), u_input.c, arg_0.d.x ^ u_input.c) % vec4<u32>(32u))));
    let var_2 = arg_1;
    var_1 = -select(vec4<i32>(-10701i, -2147483647i, _wgslsmith_sub_i32(min(2147483647i, var_0.x), u_input.b.x), 25442i), abs(min(vec4<i32>(0i, arg_0.b.x, u_input.b.x, 2147483647i), vec4<i32>(var_1.x, 40007i, var_1.x, arg_0.b.x))) | vec4<i32>(-1i, var_0.x, var_1.x, func_2(vec3<i32>(1i, arg_0.b.x, u_input.a)).b.a.b.x), any(func_2(arg_0.b ^ vec3<i32>(1i, u_input.b.x, arg_0.b.x)).b.a.c));
    var_0 = u_input.b;
    return Struct_5(firstLeadingBit(vec4<u32>(u_input.c, arg_0.d.x, u_input.c, ~(~arg_0.d.x))));
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: Struct_5, arg_3: u32) -> StorageBuffer {
    var var_0 = Struct_5(vec4<u32>(arg_2.a.x, 4294967295u, _wgslsmith_mult_u32(4294967295u, countOneBits(~arg_2.a.x)), _wgslsmith_sub_u32(arg_3, u_input.c)));
    var_0 = Struct_5(~(reverseBits(vec4<u32>(u_input.c, 19235u, 1u, 17302u)) | ~vec4<u32>(103103u, 2163u, 40537u, 23961u)));
    let var_1 = 1u;
    let var_2 = func_2(firstTrailingBit(select(~(~vec3<i32>(u_input.b.x, u_input.a, u_input.b.x)), firstLeadingBit(vec3<i32>(4784i, u_input.b.x, 42103i)), false)));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(func_2(vec3<i32>(-2334i, -firstLeadingBit(7617i), -_wgslsmith_add_i32(-3085i, u_input.a))).b.a.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-714f, -491f, _wgslsmith_f_op_f32(var_2.b.a.a.x - -755f), _wgslsmith_f_op_f32(-var_2.b.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.b.a.a, vec4<f32>(510f, 1875f, -510f, var_2.b.a.e))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b.e, -155f, arg_1, arg_1))))))));
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_2.b.a.e, var_2.b.e, var_2.b.e) + _wgslsmith_f_op_vec4_f32(-var_2.b.a.a)))), _wgslsmith_f_op_vec4_f32(min(func_1(func_2(var_2.b.a.b).b.a.c.x).a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(192f, var_3.x, 1000f, -751f))), var_2.b.a.a))))), var_2.b.d.xy, var_2.b.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 47824u;
    var_0 = u_input.c;
    global0 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-581f, 360f), _wgslsmith_f_op_f32(round(-427f)))), 579f))));
    var var_2 = Struct_4(vec2<u32>(~(~u_input.c), 1u));
    var_0 = select(1u, u_input.c << (_wgslsmith_div_u32(~(0u | u_input.c), ~_wgslsmith_div_u32(var_2.a.x, 0u)) % 32u), true);
    var_0 = 0u;
    global0 = array<Struct_2, 12>();
    var var_3 = global0[_wgslsmith_index_u32(0u, 12u)];
    let x = u_input.a;
    s_output = func_6(any(select(select(var_3.a.c.zz, select(var_3.a.c.yy, var_3.a.c.zx, var_3.a.c.yx), select(vec2<bool>(false, true), var_3.a.c.zz, true)), select(!vec2<bool>(var_3.a.c.x, true), select(vec2<bool>(true, var_3.a.c.x), vec2<bool>(false, false), var_3.a.c.yy), var_3.a.c.xy), var_3.a.c.x)), var_3.a.e, func_5(func_1(false), var_3.a.c), firstTrailingBit(81858u ^ _wgslsmith_mod_u32(~var_3.b.x, ~var_3.c)));
}

