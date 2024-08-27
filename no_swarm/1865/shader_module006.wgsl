struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-41854i, arg_0.b.x), reverseBits(arg_0.b.yy) >> (arg_0.d.yx % vec2<u32>(32u))), min(~(1i << (u_input.a % 32u)), reverseBits(~u_input.b)));
    let var_1 = Struct_3(arg_0.c, max(vec3<i32>(-1i) * -vec3<i32>(0i, 1i, var_0.x), vec3<i32>(-(~0i), arg_0.e.b.x, -var_0.x)));
    var var_2 = abs(vec3<u32>(u_input.a, ~(~u_input.a), (u_input.a | countOneBits(20378u)) & 0u));
    let var_3 = arg_0;
    let var_4 = vec2<bool>(false, any(vec2<bool>(true, false)));
    return ~(2147483647i << (0u % 32u)) >> (var_3.d.x % 32u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, 11788i | func_3(Struct_2(-682f, vec4<i32>(1463i, -1i, 49238i, 2147483647i), u_input.a, vec4<u32>(46967u, 13928u, 1u, u_input.a), Struct_1(vec3<i32>(u_input.d, 748i, u_input.b), vec3<i32>(-2147483647i, u_input.d, -6931i))))) ^ u_input.b, firstLeadingBit(-2147483647i));
    var_0 = 1i;
    var_0 = firstTrailingBit(firstTrailingBit(u_input.d) << (~38304u % 32u));
    return Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, -30912i, 25397i) >> (vec3<u32>(~67168u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(80860u, 37888u)), u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(abs(~vec3<i32>(1i, u_input.d, 6452i)), abs(vec3<i32>(2147483647i, 2147483647i, -1i) & vec3<i32>(-2147483647i, u_input.c, u_input.b)))), vec3<i32>(-1i) * -max(vec3<i32>(-1i, 16850i, -1i), firstLeadingBit(vec3<i32>(0i, u_input.d, -1i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    return _wgslsmith_f_op_f32(floor(-1000f));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-2621f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) + _wgslsmith_f_op_f32(525f - 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-484f + _wgslsmith_f_op_f32(func_4(func_2(false), Struct_1(vec3<i32>(u_input.d, u_input.e, 77800i), vec3<i32>(u_input.e, u_input.d, 6612i)), firstTrailingBit(vec2<u32>(4294967295u, u_input.a)), Struct_4(u_input.e, 4294967295u))))), -1652f);
    var var_1 = vec2<u32>(1u, u_input.a);
    var_1 = max((_wgslsmith_mult_vec2_u32(vec2<u32>(7648u, var_1.x), vec2<u32>(1u, 1u)) & ~vec2<u32>(1u, var_1.x)) | reverseBits(vec2<u32>(u_input.a, var_1.x) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), vec2<u32>(0u, abs(0u ^ u_input.a))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(~66683u, _wgslsmith_sub_u32(firstTrailingBit(0u), var_1.x)), max(~(~vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(var_1.x, u_input.a) | vec2<u32>(0u, 1u)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.x, 699f))))), -1096f, _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = var_0.x;
    return func_2(any(vec3<bool>(true, _wgslsmith_f_op_f32(func_4(Struct_1(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(u_input.d, u_input.b, -8664i)), Struct_1(vec3<i32>(u_input.d, u_input.e, 0i), vec3<i32>(u_input.b, -2147483647i, u_input.e)), vec2<u32>(20846u, var_1.x), Struct_4(2147483647i, u_input.a))) < _wgslsmith_f_op_f32(f32(-1f) * -492f), true)));
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = (abs(~u_input.a) >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(19339u, 1u, u_input.a)), ~(~vec3<u32>(65709u, 19563u, u_input.a))) % 32u)) ^ ~u_input.a;
    let var_2 = arg_0.b;
    let var_3 = true;
    var_1 = u_input.a;
    return ~(~u_input.a);
}

fn func_6(arg_0: Struct_3) -> i32 {
    let var_0 = true;
    let var_1 = Struct_2(-1070f, vec4<i32>(_wgslsmith_add_i32(u_input.e, abs(0i)), arg_0.b.x >> ((~arg_0.a >> (_wgslsmith_add_u32(u_input.a, 46647u) % 32u)) % 32u), 0i, -_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.b.x, -64802i), u_input.d)), countOneBits(2754u), ~(~(~(~vec4<u32>(1u, 0u, arg_0.a, 0u)))), func_1());
    return ~countOneBits(~(-arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a >> (u_input.a % 32u);
    var var_1 = func_6(Struct_3(func_5(func_1()), _wgslsmith_mod_vec3_i32(abs(-vec3<i32>(u_input.c, 63i, u_input.d)), vec3<i32>(0i, 1i, 0i))));
    let var_2 = Struct_3(_wgslsmith_mult_u32(u_input.a, u_input.a), vec3<i32>(~_wgslsmith_add_i32(u_input.d & u_input.b, 1i), 1i, -_wgslsmith_mod_i32(u_input.b & u_input.b, -1i)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(ceil(1375f))), min(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-21467i, var_2.b.x, 45110i, 31118i), vec4<i32>(36864i, u_input.d, 2147483647i, 19891i))), vec4<i32>(0i, u_input.e ^ var_2.b.x, 10458i, var_2.b.x << (var_2.a % 32u))), ~(-(vec4<i32>(2147483647i, -2147483647i, u_input.c, 2147483647i) | vec4<i32>(-59324i, var_2.b.x, 63331i, -50222i)))), 2092u << (0u % 32u), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, var_2.a, var_2.a), vec3<u32>(20427u, u_input.a, var_2.a)), max(1u, select(61260u, var_2.a, true)), 1u, ~0u), firstLeadingBit(select(vec4<u32>(var_2.a, u_input.a, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, 1u, 45662u), vec4<bool>(false, false, true, true))) << (~(~vec4<u32>(0u, u_input.a, 0u, 17597u)) % vec4<u32>(32u))), func_2(select(true, false, all(vec3<bool>(true, false, true)))));
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(~(~var_3.e.b.x >> (select(var_3.c, var_2.a, true) % 32u)), var_3.b.x), (_wgslsmith_dot_vec2_i32(func_1().b.zx, -var_3.b.xw) >> (firstTrailingBit(var_2.a) % 32u)) ^ select(-var_2.b.x << (45872u % 32u), 2147483647i, true), var_2.b.x);
    let var_5 = reverseBits(_wgslsmith_dot_vec2_u32(var_3.d.xw, ~vec2<u32>(~u_input.a, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.a + -2408f), -382f);
}

