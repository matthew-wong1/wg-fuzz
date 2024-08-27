struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 10> = array<u32, 10>(24978u, 0u, 4294967295u, 15340u, 72604u, 26206u, 1u, 1u, 1u, 26009u);

var<private> global3: array<vec3<i32>, 28>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_u32(~select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global4.b), ~38070u), 10u)], ~36221u, !(u_input.a.x != global0[_wgslsmith_index_u32(1u, 32u)])), ~1u);
    let var_1 = select(vec4<i32>(max(select(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0.b, 32u)], 14659i, global0[_wgslsmith_index_u32(global4.b, 32u)]), u_input.a.x, global1.x), u_input.a.x), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 10u)], 32u)], 1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(71560u, 32u)], 5062i, global0[_wgslsmith_index_u32(0u, 32u)]), u_input.a), u_input.a.x | 4234i), -1i)), firstLeadingBit((~u_input.a >> (firstLeadingBit(u_input.b) % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u))), select(vec4<bool>(true, !any(vec4<bool>(global1.x, true, true, global1.x)), global1.x, false), select(vec4<bool>(true, true, global1.x, any(vec3<bool>(global1.x, global1.x, global1.x))), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x), !all(global1.xx)));
    var var_2 = arg_0;
    global2 = array<u32, 10>();
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1737f, var_2.a, false)), _wgslsmith_f_op_f32(-global4.a), global4.a, 989f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1234f, global4.a, global4.a, var_2.a), vec4<f32>(690f, global4.a, var_2.a, -165f)))))));
    return select(vec3<bool>(global1.x | (-1i >= reverseBits(u_input.a.x)), global1.x, true), select(select(!(!vec3<bool>(false, true, global1.x)), vec3<bool>(any(global1.yz), all(vec3<bool>(false, global1.x, global1.x)), global1.x), ~0u < u_input.c), !vec3<bool>(true, !global1.x, true), !(!(!vec3<bool>(true, true, global1.x)))), global1.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-900f, -1153f) - _wgslsmith_f_op_f32(max(global4.a, 782f))))) - -1299f), 422f);
    let var_1 = u_input.d;
    var var_2 = 4294967295u;
    let var_3 = vec3<bool>(global1.x, !any(!select(vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, false), vec3<bool>(true, global1.x, true))), all(func_3(arg_0)));
    var_2 = ~(~global4.b);
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), ~35663u);
    var var_1 = !vec3<bool>(global1.x, any(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global1.x, false, false, true), !vec4<bool>(true, global1.x, false, false))), 23417i >= -global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b, global2[_wgslsmith_index_u32(1u, 10u)]), 32u)]);
    var_1 = func_3(func_2(func_2(var_0, func_2(func_2(Struct_1(236f, 0u), 1u, var_0), ~global4.b, Struct_1(arg_1.a, 79940u)).b, Struct_1(-1000f, global2[_wgslsmith_index_u32(~arg_2, 10u)])), _wgslsmith_mod_u32(~1u, ~0u), Struct_1(arg_1.a, global4.b)));
    var_1 = !vec3<bool>(var_1.x, 1u < _wgslsmith_sub_u32(18112u ^ arg_2, _wgslsmith_mod_u32(1u, 98611u)), any(vec2<bool>(true, global1.x)));
    var_1 = vec3<bool>(true, global1.x, true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2180f) * _wgslsmith_f_op_f32(-global4.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(406f)), 418f)))))), 449f);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(77267u | (_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c, 0u), ~global2[_wgslsmith_index_u32(u_input.c, 10u)]) >> (global4.b % 32u)));
    var var_1 = _wgslsmith_clamp_vec3_u32(reverseBits(u_input.b.xxx ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 44613u, 0u), select(vec3<u32>(17859u, global2[_wgslsmith_index_u32(29162u, 10u)], u_input.c), u_input.b.wyx, vec3<bool>(true, false, global1.x)), vec3<u32>(arg_0.b, global2[_wgslsmith_index_u32(global4.b, 10u)], 43559u))), ~min(firstLeadingBit(select(vec3<u32>(arg_0.b, global4.b, global2[_wgslsmith_index_u32(global4.b, 10u)]), u_input.b.zzy, vec3<bool>(global1.x, global1.x, global1.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.b, 4627u), u_input.b.zzz, vec3<u32>(23319u, global4.b, arg_0.b)) ^ vec3<u32>(4294967295u, u_input.b.x, 54565u)), vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(arg_0.b, 10u)], 4294967295u)), global4.b), 17508u, 4294967295u));
    var var_2 = arg_0;
    var_1 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(78785u, 10u)], global4.b, 1u), vec3<u32>(arg_0.b, u_input.b.x, 4294967295u)), ~vec3<u32>(var_1.x, 128061u, 10075u), !global1.x), firstLeadingBit(~vec3<u32>(global2[_wgslsmith_index_u32(var_1.x, 10u)], 1u, var_2.b))), ~(firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(40271u, 10u)], global4.b, 0u)) ^ ~u_input.b.zzw));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(global4.a + global4.a), ~(~(arg_0.b ^ 4294967295u) ^ 1u));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(abs(4294967295u), func_2(Struct_1(412f, arg_2), arg_2, Struct_1(arg_1.x, arg_2)), ~arg_2))), ~(4294967295u & _wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(45575u, 7103u)))));
    let var_1 = global1.x;
    var var_2 = firstLeadingBit(u_input.b.wzx);
    var var_3 = Struct_1(_wgslsmith_div_f32(615f, _wgslsmith_f_op_f32(f32(-1f) * -650f)), _wgslsmith_mult_u32(4294967295u, var_0.b ^ 16128u));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -239f, var_3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(17821u, Struct_1(533f, global4.b), 35800u)), 167f)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a))), u_input.c | ~min(~1u, var_2.x >> (global2[_wgslsmith_index_u32(4294967295u, 10u)] % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec2_i32(~(vec2<i32>(u_input.d, -1i) & vec2<i32>(-3849i, 0i)), min(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yw, vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], 32u)], -2147483647i), vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.b, 10u)], 32u)], -2457i)), ~vec2<i32>(38203i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), firstTrailingBit(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 32u)])))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(116f, global4.a, global4.a) + vec3<f32>(global4.a, global4.a, -1607f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, -169f, global4.a))) + vec3<f32>(_wgslsmith_f_op_f32(global4.a + global4.a), _wgslsmith_f_op_f32(ceil(-473f)), _wgslsmith_f_op_f32(-global4.a))), vec3<f32>(global4.a, -1761f, _wgslsmith_f_op_f32(sign(132f))))), 61152u);
    let var_1 = false;
    var var_2 = func_1(-firstTrailingBit(~(u_input.a.yw >> (vec2<u32>(global4.b, 0u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global4.a, -590f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, global4.a, 807f))))))), func_5(Struct_1(var_0.a, ~15905u)).b ^ (1u | _wgslsmith_dot_vec3_u32(~vec3<u32>(106005u, var_0.b, var_0.b), u_input.b.xzw)));
    var var_3 = vec4<u32>(max(select(global4.b, func_2(Struct_1(global4.a, var_0.b), 1u, Struct_1(-241f, 35168u)).b, true), 0u), ~global2[_wgslsmith_index_u32(~7903u, 10u)], global4.b, 26250u) | _wgslsmith_add_vec4_u32(u_input.b, select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 6031u, var_2.b) >> (vec4<u32>(266u, 1u, global2[_wgslsmith_index_u32(var_2.b, 10u)], 42205u) % vec4<u32>(32u)), reverseBits(vec4<u32>(70106u, 29298u, global4.b, var_0.b))), ~vec4<u32>(global4.b, 1u, 4294967295u, 4294967295u), false | global1.x));
    var var_4 = vec4<bool>(false, any(select(vec3<bool>(-45188i > global0[_wgslsmith_index_u32(var_0.b, 32u)], !global1.x, true), vec3<bool>(false, true, true), var_1)), var_1, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<f32>(var_2.a, global4.a, 250f), global4.b).a * 1208f), 142f, _wgslsmith_f_op_f32(abs(1f)))));
}

