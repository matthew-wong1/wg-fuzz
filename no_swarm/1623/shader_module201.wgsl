struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec4<u32>(0u, 39670u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 28443u, 1u), vec3<i32>(0i, i32(-2147483648), -33745i), 63771u), Struct_4(vec4<u32>(53470u, 33329u, 0u, 17046u), vec3<u32>(2736u, 4294967295u, 14082u), vec3<i32>(-1i, 1i, 1i), 1u), Struct_4(vec4<u32>(0u, 0u, 4294967295u, 0u), vec3<u32>(4294967295u, 40002u, 47123u), vec3<i32>(-26805i, 35702i, 6318i), 0u), Struct_4(vec4<u32>(4294967295u, 1u, 1u, 341u), vec3<u32>(1u, 0u, 4294967295u), vec3<i32>(-1i, 2147483647i, 2147483647i), 4294967295u), Struct_4(vec4<u32>(10872u, 39327u, 0u, 149088u), vec3<u32>(4294967295u, 0u, 73166u), vec3<i32>(9725i, 2147483647i, 2147483647i), 70976u), Struct_4(vec4<u32>(52483u, 14110u, 1u, 25187u), vec3<u32>(46941u, 1u, 4294967295u), vec3<i32>(2147483647i, 23294i, i32(-2147483648)), 4294967295u));

var<private> global2: array<i32, 17> = array<i32, 17>(1848i, -1i, 993i, 0i, -44968i, 5566i, 1i, 0i, 0i, 472i, -5211i, 624i, 1i, i32(-2147483648), i32(-2147483648), 0i, -38766i);

var<private> global3: i32 = -47698i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> i32 {
    return arg_2;
}

fn func_3() -> f32 {
    global3 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~countOneBits(-vec3<i32>(global2[_wgslsmith_index_u32(10744u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(41303u, 17u)])), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-40148i, global2[_wgslsmith_index_u32(0u, 17u)], 45448i), vec3<i32>(-60283i, global2[_wgslsmith_index_u32(116438u, 17u)], -1i)), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]) & vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(24949u, 17u)], global2[_wgslsmith_index_u32(9799u, 17u)])) << (min(vec3<u32>(21283u, u_input.a, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(-global2[_wgslsmith_index_u32(0u, 17u)]), reverseBits(i32(-1i) * -1i), -33463i), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, -1i, global2[_wgslsmith_index_u32(4771u, 17u)])), vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.a, 17u)], -1i)), vec3<i32>(global2[_wgslsmith_index_u32(1u, 17u)], min(global2[_wgslsmith_index_u32(40923u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]), ~global2[_wgslsmith_index_u32(u_input.a, 17u)]))));
    var var_0 = ~abs(~(~vec3<u32>(u_input.a, 1u, u_input.a)));
    var var_1 = -584f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1878f)) - -240f))) * 133f);
    global3 = _wgslsmith_add_i32(i32(-1i) * -28792i, 4924i >> ((var_0.x ^ var_0.x) % 32u));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1064f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f * -787f))))));
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    var var_0 = !vec4<bool>(!(func_2(vec4<f32>(-1227f, -399f, -531f, arg_0.x), arg_0.yz, global2[_wgslsmith_index_u32(u_input.a, 17u)], arg_3) != 1i), !arg_3 == false, any(vec4<bool>(any(vec4<bool>(false, arg_3, true, false)), arg_3, all(vec3<bool>(false, true, false)), false)), arg_3);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -464f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))));
    var var_2 = select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), var_0.zwy, var_0.yzx), !select(!(!var_0.wyy), var_0.zww, all(vec2<bool>(var_0.x, arg_3))), any(vec2<bool>(true, true)));
    var var_3 = 4294967295u;
    var var_4 = select(var_0.wz, var_0.ww, true);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 6>();
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-204f, -332f, 1466f, 467f), vec4<f32>(487f, -573f, 317f, -874f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1054f, -1000f, -172f, 320f)))))), -1594f, Struct_3(~_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(18097u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)]), select(vec4<i32>(64861i, 3886i, global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]), vec4<i32>(global2[_wgslsmith_index_u32(45831u, 17u)], -1i, 10904i, global2[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(false, false, false, true)))), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    let var_1 = true;
    var var_2 = Struct_1(!vec3<bool>(~u_input.a > ~4294967295u, false, var_1), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(max(~vec3<u32>(41927u, u_input.a, u_input.a), ~vec3<u32>(0u, 1u, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 41729u, u_input.a), vec3<u32>(25701u, 4294967295u, u_input.a)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 58495u, 39191u), vec3<u32>(u_input.a, u_input.a, u_input.a)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, 79417u, 4294967295u)) % vec3<u32>(32u)), ~countOneBits(vec3<u32>(1u, u_input.a, u_input.a))));
    let var_3 = Struct_4(vec4<u32>(u_input.a | max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, 1u, 10237u, var_2.b.x), vec4<u32>(u_input.a, var_2.b.x, var_2.b.x, 34597u)), u_input.a), u_input.a, var_2.b.x, 36551u), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.x ^ 4294967295u, ~1u, ~0u), ~firstLeadingBit(var_2.b)), ~vec3<u32>(max(u_input.a, 0u), 57898u << (1u % 32u), 0u)), select(-vec3<i32>(~global2[_wgslsmith_index_u32(54124u, 17u)], _wgslsmith_mult_i32(var_0.a.x, -1i), global2[_wgslsmith_index_u32(u_input.a, 17u)] >> (u_input.a % 32u)), -var_0.a.zxy, true), ~(~1060u));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-351f - -1356f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1183f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -107f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1242f, -1238f, var_1)), -960f))))));
    global2 = array<i32, 17>();
    let var_4 = vec3<u32>(var_3.d, u_input.a, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, _wgslsmith_f_op_f32(floor(1408f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1350f), _wgslsmith_f_op_f32(ceil(-786f))))), ~func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1000f, -474f, -595f), _wgslsmith_f_op_vec4_f32(vec4<f32>(350f, 153f, -1328f, -967f) + vec4<f32>(207f, -1122f, 1549f, -1395f)))), _wgslsmith_f_op_f32(min(1071f, _wgslsmith_f_op_f32(f32(-1f) * -827f))), func_1(vec4<f32>(-1327f, -540f, -457f, 922f), _wgslsmith_f_op_f32(sign(-271f)), var_0, true), ~u_input.a < ~0u).a.x, vec2<u32>(~select(var_4.x, var_2.b.x, var_1), 4294967295u) >> (select(var_3.a.zz, countOneBits(vec2<u32>(var_4.x, 0u)), any(var_2.a.xy)) % vec2<u32>(32u)));
}

