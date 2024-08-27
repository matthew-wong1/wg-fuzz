struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 23757u, 32432u), vec4<u32>(12095u, 77553u, 4294967295u, 3026u), 0u, 1000f);

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(25230u, 1u, 5229u), vec4<u32>(69676u, 4294967295u, 0u, 28949u), 54511u, -393f), Struct_1(vec3<u32>(1u, 28888u, 18750u), vec4<u32>(48080u, 4294967295u, 33222u, 10342u), 4294967295u, -1000f), Struct_1(vec3<u32>(4294967295u, 58336u, 4294967295u), vec4<u32>(0u, 68591u, 88205u, 22131u), 630u, 376f), Struct_1(vec3<u32>(0u, 24545u, 32056u), vec4<u32>(35687u, 0u, 145951u, 9286u), 0u, 1663f), Struct_1(vec3<u32>(0u, 1u, 65828u), vec4<u32>(0u, 0u, 1293u, 13368u), 4294967295u, -471f), Struct_1(vec3<u32>(11776u, 2136u, 56565u), vec4<u32>(10856u, 1u, 51108u, 1u), 71430u, -1351f), Struct_1(vec3<u32>(15441u, 0u, 21290u), vec4<u32>(74500u, 45306u, 1u, 8675u), 28762u, -1062f), Struct_1(vec3<u32>(46466u, 41932u, 14821u), vec4<u32>(0u, 0u, 1u, 1u), 57104u, 632f));

var<private> global2: array<vec4<f32>, 8>;

var<private> global3: array<bool, 15>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    return min(~vec4<u32>(select(81403u, global4.c, true) & ~global4.a.x, _wgslsmith_clamp_u32(1u, 1u, u_input.a.x) ^ global0.a.x, ~3952u | global0.b.x, firstLeadingBit(global4.b.x)), ~vec4<u32>(15089u | global4.a.x, ~1u, abs(38071u), _wgslsmith_mult_u32(~global4.b.x, 0u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_add_vec4_u32(global4.b | (global4.b << (arg_1.b % vec4<u32>(32u))), max(global0.b, func_3())) << (arg_1.b % vec4<u32>(32u)), _wgslsmith_mult_u32(((34057u | global0.a.x) >> (~global0.b.x % 32u)) | (reverseBits(global4.b.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b.x, 0u), vec3<u32>(arg_1.a.x, 91308u, 18299u))), arg_1.c), global4.d);
    global0 = Struct_1(~(u_input.a ^ (~vec3<u32>(global4.a.x, 66305u, 4294967295u) ^ u_input.a)), arg_1.b, ~(~(global4.c >> (arg_2 % 32u)) >> (select(0u, 1u, !global3[_wgslsmith_index_u32(4294967295u, 15u)]) % 32u)), arg_1.d);
    let var_1 = any(!select(vec2<bool>(true, true), !select(vec2<bool>(global3[_wgslsmith_index_u32(16082u, 15u)], global3[_wgslsmith_index_u32(global0.b.x, 15u)]), vec2<bool>(true, true), vec2<bool>(true, global3[_wgslsmith_index_u32(38130u, 15u)])), global3[_wgslsmith_index_u32(36367u, 15u)]));
    var var_2 = !vec2<bool>(true, select(true, true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a.x ^ 1u, arg_1.c), 15u)]));
    global4 = var_0;
    return vec2<f32>(global4.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * var_0.d))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.d), global0.d) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.d, global4.d)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(-1657f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, arg_0.a.x), 8u)], firstLeadingBit(25974u))) + vec2<f32>(_wgslsmith_f_op_f32(-373f + arg_0.d), arg_0.d))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * 235f), _wgslsmith_f_op_f32(-arg_0.d)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, 1000f, -1874f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d, _wgslsmith_f_op_f32(sign(global4.d)), global0.d) * vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.d, -540f)), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-global4.d))))));
    global1 = array<Struct_1, 8>();
    let var_2 = reverseBits(2147483647i);
    global4 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(arg_0.c, u_input.a.x), ~global0.a.x, firstTrailingBit(56809u)), select(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global0.b.x, 16307u, 45915u, arg_2.x)), ~arg_0.b), ~_wgslsmith_mult_vec4_u32(~global0.b, vec4<u32>(1u, arg_2.x, arg_0.b.x, 10797u)), all(vec3<bool>(true, true, true))), 6822u, global4.d);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(_wgslsmith_mod_u32(arg_2.x, 39301u), ~34657u, u_input.a.x)), 0u), vec2<u32>(global4.c, _wgslsmith_mod_u32(arg_2.x, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(~abs(~vec3<u32>(86055u, global4.a.x, 4294967295u)), vec3<u32>(_wgslsmith_add_u32(abs(global4.c), ~4294967295u), ~firstLeadingBit(80723u), global0.b.x)), global4.b, global0.b.x | (func_1(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 37100i, vec2<u32>(global0.b.x, u_input.a.x)) & abs(1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_2(global0.d, Struct_1(global0.b.zzw, global4.b, 4294967295u, global4.d), global0.b.x)).x, _wgslsmith_f_op_f32(-1443f * -1000f)))))));
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zx | ~var_0.b.xy, u_input.a.zx), global0.b.x);
    var var_2 = Struct_1(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(21411u ^ global4.c, ~global0.a.x, u_input.a.x)), u_input.a), global0.b, ~reverseBits(var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(var_0.d, global1[_wgslsmith_index_u32(~global0.b.x, 8u)], 10971u)).x * global4.d) * _wgslsmith_f_op_f32(exp2(global4.d))));
    let var_3 = global1[_wgslsmith_index_u32(~0u, 8u)];
    let var_4 = vec4<i32>(1i, -76911i, 14716i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i ^ (21765i >> (u_input.a.x % 32u)), _wgslsmith_div_i32(i32(-1i) * -44976i, _wgslsmith_mult_i32(-8119i, -26514i))), i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(global0.a.x) >> (var_2.b.x % 32u)));
}

