struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 26> = array<u32, 26>(123620u, 48735u, 3899u, 17140u, 1u, 57798u, 69188u, 4294967295u, 9962u, 1u, 22293u, 63140u, 54681u, 0u, 4294967295u, 4294967295u, 4294967295u, 111942u, 8572u, 0u, 18259u, 61604u, 32380u, 1u, 4294967295u, 4294967295u);

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    global1 = array<u32, 26>();
    global0 = global2.e.d;
    let var_0 = Struct_2(vec4<i32>(-(~0i ^ ~arg_3), -_wgslsmith_add_i32(-92541i, ~u_input.b.x), arg_3, 0i), abs(arg_3), global2.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~13223u, 972u), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 42067u)))), Struct_1(global2.c.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 26u)], global2.c.b), vec2<u32>(1u, 4294967295u)), ~vec2<u32>(global2.c.b, 4294967295u)), firstTrailingBit(abs(global1[_wgslsmith_index_u32(global2.e.b, 26u)])), _wgslsmith_mod_u32(_wgslsmith_mod_u32(65200u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9049u, 26u)], 26u)]), ~0u)), !select(!global2.c.c, !vec4<bool>(global2.e.c.x, arg_1, global2.c.c.x, global2.e.c.x), global2.e.c), ~global2.c.d));
    global2 = var_0;
    global2 = var_0;
    return ~1i;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(~(~reverseBits(0i)), 20109i ^ _wgslsmith_mod_i32(max(u_input.b.x >> (global2.c.b % 32u), func_3(global2.c.c.x, false, global2.c.c.xyw, 1i)), -u_input.c));
    let var_1 = global2.c.c.wyy;
    global2 = Struct_2(global2.a, countOneBits(-29060i), global2.c, ~select(48111u, global2.c.d, false), global2.c);
    var var_2 = !select(!(!global2.c.c.wzx), global2.e.c.www, !select(global2.c.c.yzz, !global2.e.c.zxx, global2.c.c.x));
    let var_3 = vec3<f32>(-3417f, _wgslsmith_f_op_f32(max(109f, _wgslsmith_f_op_f32(f32(-1f) * -1404f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1366f, -1718f), _wgslsmith_f_op_f32(max(-131f, -929f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1141f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1496f, -1389f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1343f - -1080f))))));
    return global2.e;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(~abs(1u) >> ((~1u & _wgslsmith_div_u32(0u, arg_1.d)) % 32u), 26u)] < (~arg_2.x | 1u));
    global0 = ~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.c.d, 0u, 9146u), vec3<u32>(arg_1.d, arg_1.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)]) ^ vec3<u32>(4294967295u, global2.e.b, global2.d)), ~abs(vec3<u32>(global1[_wgslsmith_index_u32(arg_1.b, 26u)], 0u, arg_2.x))));
    var var_1 = arg_0;
    let var_2 = arg_1.c.wz;
    global2 = Struct_2(vec4<i32>(~var_1.a, var_1.a, 2147483647i, 0i), ~(~(-1i)), arg_1, _wgslsmith_add_u32(1u, max(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(16444u, 26u)], global1[_wgslsmith_index_u32(arg_2.x, 26u)]) ^ firstLeadingBit(global2.d), _wgslsmith_mod_u32(arg_2.x, 56823u) >> (~global2.e.b % 32u))), arg_1);
    return Struct_2((u_input.b & vec4<i32>(global2.a.x, max(0i, 27168i), _wgslsmith_clamp_i32(global2.a.x, -2147483647i, var_1.a), ~23721i)) ^ global2.a, -26151i << (~reverseBits(arg_1.d) % 32u), func_2(), ~abs(1u), func_2());
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(Struct_3(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.xyz, u_input.b.zzw), 0i), global2.b), _wgslsmith_f_op_f32(f32(-1f) * -2260f)), func_2(), max(~(~firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(global2.e.b, 26u)], global2.c.d))), vec2<u32>(60632u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(16457u, 26u)], global2.e.d, global2.e.b, 1u), vec4<u32>(11359u, 22844u, 48317u, global1[_wgslsmith_index_u32(50381u, 26u)])))));
    global0 = var_0.d;
    var_0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(-u_input.b, select(vec4<i32>(global2.a.x, var_0.b, u_input.c, u_input.a), var_0.a, vec4<bool>(var_0.e.c.x, true, global2.e.c.x, false))) << (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~global2.e.d, 26u)], global2.e.b, global2.e.d), 26u)] % 32u), _wgslsmith_mod_i32(u_input.a, -select(var_0.a.x, -5977i, global2.c.c.x)), abs(global2.b), _wgslsmith_mod_i32(_wgslsmith_mod_i32(min(u_input.a, -2147483647i), -62478i), min(-19370i, -22752i))), -(global2.a.x | -1i), Struct_1(firstLeadingBit(1u), global2.c.b, !global2.c.c, 1u & select(var_0.e.d & 1u, ~3611u, !var_0.c.c.x)), ~global1[_wgslsmith_index_u32(~1u, 26u)], Struct_1(var_0.e.d, _wgslsmith_clamp_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23857u, 26u)], 26u)]), ~var_0.c.d >> (1u % 32u), ~min(global2.c.a, 1u)), vec4<bool>(global2.e.c.x, false | (false | var_0.e.c.x), all(var_0.e.c), (global2.a.x < 8646i) && false), abs(4294967295u)));
    global2 = Struct_2(var_0.a, _wgslsmith_mod_i32(firstLeadingBit(13127i), ~(_wgslsmith_mult_i32(-45210i, global2.a.x) << ((35226u ^ global1[_wgslsmith_index_u32(1u, 26u)]) % 32u))), global2.e, 1u, func_2());
    var_0 = func_4(Struct_3(~(~(-global2.a.x)), _wgslsmith_f_op_f32(111f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(740f - -1000f) + _wgslsmith_f_op_f32(max(-1090f, 630f))))), global2.c, ~firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(1u, global2.c.d), global2.e.b)));
    return Struct_2(var_0.a, -47647i, func_2(), var_0.e.a, Struct_1(~(~8379u), _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_clamp_u32(62557u, 26138u, global1[_wgslsmith_index_u32(9530u, 26u)])), vec4<bool>(any(!vec3<bool>(global2.c.c.x, true, true)), global2.c.c.x, !global2.c.c.x, var_0.c.c.x), var_0.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = func_1();
    let var_0 = Struct_3(global2.b << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.c.b, global1[_wgslsmith_index_u32(84140u, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c.a, 26u)], 26u)]), vec3<u32>(global2.c.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.d, 26u)], 26u)], 1u)), _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(1u, 26u)], global2.d), 0u) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1113f, 452f)), 307f, global2.c.c.x))))));
    var var_1 = 0u;
    global0 = _wgslsmith_clamp_u32(22258u, 50138u, _wgslsmith_mod_u32(~max(reverseBits(1u), ~global2.e.a), ~1u));
    var var_2 = vec3<f32>(var_0.b, var_0.b, -498f);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~max(vec4<i32>(0i, -2147483647i, var_0.a, 29833i), u_input.b) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(global2.e.d, 12999u, global2.e.d, 54284u), vec4<u32>(1u, global1[_wgslsmith_index_u32(global2.e.a, 26u)], global2.e.b, global2.e.d)) % vec4<u32>(32u))));
}

