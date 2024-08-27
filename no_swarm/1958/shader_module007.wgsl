struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, true)));

var<private> global1: vec4<i32> = vec4<i32>(-1i, -49463i, 21859i, 1i);

var<private> global2: array<i32, 15> = array<i32, 15>(-46386i, 19583i, i32(-2147483648), 0i, -27753i, 34618i, 19410i, 0i, 14432i, -16689i, i32(-2147483648), -33090i, 2147483647i, -73494i, -3762i);

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(0u, 30u)];
    var var_1 = select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, global3.x, global3.x, global3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(40872u, global3.x, global3.x, 0u), vec4<u32>(global3.x, 0u, 1u, global3.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 4294967295u, global3.x, global3.x) | vec4<u32>(global3.x, global3.x, 90089u, 1u), ~vec4<u32>(global3.x, global3.x, global3.x, 66623u))), vec4<u32>(global3.x >> (24451u % 32u), global3.x, ~global3.x, global3.x), select(vec4<bool>(true, !arg_1.a, false != var_0.a.x, all(var_0.a.xz)), vec4<bool>(true, true, true, true), true)) << (_wgslsmith_div_vec4_u32(min(~vec4<u32>(global3.x, 72221u, 4294967295u, 84408u), vec4<u32>(~0u, global3.x, 4294967295u, reverseBits(7004u))), ~vec4<u32>(~global3.x, ~global3.x, 54998u, _wgslsmith_mod_u32(global3.x, 0u))) % vec4<u32>(32u));
    let var_2 = ~(~reverseBits(global3.x));
    var var_3 = Struct_2(select(!(!(!vec3<bool>(true, arg_1.a, arg_1.a))), vec3<bool>(any(!vec3<bool>(arg_2.a, true, var_0.a.x)), _wgslsmith_f_op_f32(-1354f + -1700f) <= _wgslsmith_f_op_f32(sign(1572f)), select(false, var_0.a.x, !var_0.a.x)), arg_1.a | true));
    global3 = vec2<u32>(global3.x, ~23914u);
    return var_1.yzx;
}

fn func_2() -> bool {
    let var_0 = abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, 40671u, 37468u) ^ countOneBits(vec3<u32>(global3.x, 0u, 64724u)), vec3<u32>(global3.x, global3.x, 4294967295u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, 4294967295u, global3.x), vec3<u32>(22228u, 10358u, global3.x))), func_3(_wgslsmith_div_i32(8032i, _wgslsmith_mult_i32(global1.x, -1i)), Struct_1(any(vec2<bool>(true, false))), Struct_1(false)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global3.x, 23954u), vec3<u32>(40172u, global3.x, 27950u)), ~vec3<u32>(global3.x, 1u, 0u))));
    var var_1 = var_0.x;
    global3 = var_0.zy << (~reverseBits(select(vec2<u32>(1u, 0u), ~vec2<u32>(var_0.x, var_0.x), vec2<bool>(true, true))) % vec2<u32>(32u));
    let var_2 = max(firstTrailingBit(~(~reverseBits(var_0.zx))), var_0.xz);
    var var_3 = -2147483647i;
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_2(select(select(select(select(vec3<bool>(arg_1.b.a, arg_0.b.a, arg_1.b.a), vec3<bool>(arg_0.b.a, false, arg_0.a.x), vec3<bool>(arg_1.b.a, arg_1.a.x, arg_1.a.x)), vec3<bool>(false, arg_1.b.a, arg_1.a.x), arg_0.a.x), vec3<bool>(true, true, true), vec3<bool>(true, true, global3.x != 1u)), vec3<bool>(any(vec3<bool>(arg_1.a.x, false, false)) && all(vec2<bool>(arg_0.a.x, false)), func_2(), all(!vec4<bool>(arg_1.b.a, true, true, false))), select(vec3<bool>(arg_0.a.x | true, false, arg_1.a.x), vec3<bool>(false, select(false, true, arg_1.b.a), any(vec4<bool>(arg_1.a.x, arg_0.b.a, false, false))), select(select(vec3<bool>(arg_1.b.a, true, true), vec3<bool>(arg_0.a.x, false, arg_1.b.a), vec3<bool>(true, arg_0.a.x, arg_1.b.a)), vec3<bool>(true, true, true), select(vec3<bool>(false, arg_1.b.a, arg_1.b.a), vec3<bool>(arg_1.a.x, true, arg_1.b.a), vec3<bool>(false, arg_0.a.x, true))))));
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~(vec4<i32>(-44822i, 1i, 1i, global2[_wgslsmith_index_u32(23468u, 15u)]) << (vec4<u32>(global3.x, 1u, 29436u, 103435u) % vec4<u32>(32u))), -abs(vec4<i32>(0i, 2147483647i, global2[_wgslsmith_index_u32(6729u, 15u)], 34071i) ^ vec4<i32>(global1.x, 396i, global1.x, -2315i))), _wgslsmith_mod_vec4_i32(firstLeadingBit(abs(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a))), ~vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x, global3.x), 15u)], ~(-2686i), -u_input.a)));
    var_0 = global0[_wgslsmith_index_u32(abs(func_3(global2[_wgslsmith_index_u32(6629u, 15u)], arg_1.b, arg_1.b).x), 30u)];
    let var_2 = select(select(select(select(select(vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec4<bool>(false, false, arg_0.a.x, arg_0.b.a), vec4<bool>(false, true, var_0.a.x, var_0.a.x)), select(vec4<bool>(var_0.a.x, arg_1.b.a, true, arg_0.b.a), vec4<bool>(true, false, arg_1.b.a, var_0.a.x), arg_0.b.a), select(vec4<bool>(arg_1.b.a, false, false, true), vec4<bool>(var_0.a.x, arg_0.b.a, false, true), var_0.a.x)), select(vec4<bool>(var_0.a.x, false, arg_0.b.a, arg_0.a.x), !vec4<bool>(false, arg_1.a.x, var_0.a.x, true), select(vec4<bool>(true, var_0.a.x, true, arg_1.a.x), vec4<bool>(arg_1.b.a, arg_1.b.a, true, false), arg_1.a.x)), vec4<bool>(true, !arg_1.b.a, true, arg_0.a.x || arg_0.a.x)), !select(!vec4<bool>(true, false, arg_1.b.a, arg_0.a.x), vec4<bool>(var_0.a.x, arg_1.b.a, false, false), true & arg_1.a.x), false), select(!select(select(vec4<bool>(arg_0.a.x, arg_1.a.x, false, var_0.a.x), vec4<bool>(arg_0.a.x, false, true, arg_1.a.x), vec4<bool>(var_0.a.x, true, arg_1.b.a, false)), !vec4<bool>(true, arg_0.a.x, true, false), !vec4<bool>(var_0.a.x, false, false, false)), !vec4<bool>(var_0.a.x, all(var_0.a), arg_0.a.x, arg_1.a.x), all(vec2<bool>(!var_0.a.x, false))), arg_0.a.x || any(vec3<bool>(all(vec4<bool>(true, false, false, var_0.a.x)), arg_0.b.a, all(arg_1.a))));
    let var_3 = -(select(vec4<i32>(0i, firstTrailingBit(u_input.a), global1.x, _wgslsmith_sub_i32(var_1.x, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(1i, var_1.x, global1.x, u_input.a), vec4<bool>(false, true, arg_1.b.a, true)) >> (~vec4<u32>(~0u, ~global3.x, 32554u, _wgslsmith_add_u32(10003u, global3.x)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-493f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)))), !(!all(arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(global1.x, u_input.a) | ~1i, global2[_wgslsmith_index_u32(global3.x, 15u)], reverseBits(_wgslsmith_clamp_i32(countOneBits(45880i), 4166i, countOneBits(u_input.a))), u_input.a) ^ vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, _wgslsmith_clamp_i32(2147483647i, ~global1.x, global2[_wgslsmith_index_u32(global3.x, 15u)])), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~global3.x), global3.x), 15u)], _wgslsmith_mult_i32(global1.x << (~global3.x % 32u), u_input.a));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1018f, -1000f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-725f, _wgslsmith_f_op_f32(f32(-1f) * -1222f), any(vec3<bool>(true, false, true))))))), _wgslsmith_f_op_f32(step(1466f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(func_1(Struct_3(vec2<bool>(false, true), Struct_1(true)), Struct_3(vec2<bool>(true, true), Struct_1(true))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(47599u, _wgslsmith_dot_vec2_u32(vec2<u32>(~global3.x, _wgslsmith_mod_u32(global3.x, _wgslsmith_div_u32(15538u, global3.x))), ~vec2<u32>(global3.x, 1u) << (firstTrailingBit(vec2<u32>(global3.x, 8813u) & vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), ~(~vec4<u32>(~global3.x, ~global3.x, _wgslsmith_sub_u32(0u, global3.x), ~91722u)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(516f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x), false)))), vec3<u32>(abs(abs(~global3.x)), abs(global3.x), global3.x));
}

