struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
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

var<private> global0: array<f32, 8>;

var<private> global1: Struct_2 = Struct_2(false, vec4<u32>(1u, 0u, 55476u, 10520u), Struct_1(true, 235f));

var<private> global2: Struct_1 = Struct_1(true, -478f);

var<private> global3: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, global1.b.x | ~4294967295u, 1u), ~(~_wgslsmith_dot_vec2_u32(u_input.b, global1.b.zw << (u_input.b % vec2<u32>(32u)))), 1u, firstTrailingBit(132692u));
    var var_1 = Struct_4(Struct_1(global1.c.a, -420f), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.wy, vec2<u32>(0u, 4294967295u)) << (reverseBits(var_0.x) % 32u), 418u) != (~_wgslsmith_mult_u32(1u, var_0.x) << ((var_0.x & ~var_0.x) % 32u)));
    global3 = !any(!vec3<bool>(all(vec2<bool>(false, global2.a)), u_input.a.x == u_input.a.x, u_input.a.x < 13224i));
    global3 = var_1.a.a;
    let var_2 = Struct_5(Struct_1(true, _wgslsmith_f_op_f32(-638f * _wgslsmith_f_op_f32(exp2(var_1.a.b)))), ~global1.b.wwz, 4294967295u, vec3<u32>(~(~reverseBits(49431u)), ~1u, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(global1.b.x, global1.b.x), global1.b.wz, global2.a & var_1.b), vec2<u32>(select(1u, 3286u, true), 22338u))));
    return u_input.a.x;
}

fn func_2() -> f32 {
    var var_0 = u_input.a.zxy;
    var_0 = u_input.a.zzz | vec3<i32>(func_3(Struct_1(false, _wgslsmith_f_op_f32(sign(global1.c.b)))), _wgslsmith_clamp_i32(-var_0.x, ~(-u_input.a.x), 44615i), _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, 4578i), u_input.a.x & ~var_0.x));
    global2 = global1.c;
    let var_1 = global2.b;
    global2 = Struct_1(global1.a, 392f);
    return -1000f;
}

fn func_1() -> Struct_2 {
    global2 = Struct_1(any(!select(!vec3<bool>(true, global1.a, false), !vec3<bool>(false, true, global2.a), false)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 8u)])));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))));
    global3 = true;
    var var_1 = select(select(select(select(vec2<bool>(false, global1.c.a), select(vec2<bool>(global1.c.a, true), vec2<bool>(true, global1.c.a), vec2<bool>(global1.c.a, false)), vec2<bool>(true, false)), select(vec2<bool>(true, true), !vec2<bool>(global1.c.a, true), false), global1.c.a), !select(vec2<bool>(true, true), !vec2<bool>(global2.a, false), select(vec2<bool>(true, global2.a), vec2<bool>(true, true), vec2<bool>(global2.a, true))), vec2<bool>(all(!vec4<bool>(global1.a, global2.a, global1.c.a, true)), any(!vec2<bool>(true, global2.a)))), select(vec2<bool>(all(!vec4<bool>(global2.a, global1.c.a, global1.a, true)), !global1.c.a), vec2<bool>(any(!vec4<bool>(false, true, global2.a, false)), select(false, global2.a, global1.b.x <= 41401u)), vec2<bool>(global1.c.a, global1.a)), true);
    global1 = Struct_2(!global2.a, abs(~global1.b), Struct_1(-1i == select(u_input.a.x, _wgslsmith_div_i32(2147483647i, u_input.a.x), global1.c.b >= global1.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.b.x, 8u)] + 713f), _wgslsmith_f_op_f32(-794f * 866f), global1.c.a)))));
    return Struct_2(true || (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + global2.b))) == global2.b), global1.b, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(countOneBits(reverseBits(global1.b.x >> (3727u % 32u))), u_input.b.x, 18182u, ~((global1.b.x & global1.b.x) >> ((32507u ^ global1.b.x) % 32u))) & _wgslsmith_clamp_vec4_u32(~global1.b, ~(~global1.b & ~global1.b), ~max(~vec4<u32>(0u, 43223u, 37295u, u_input.b.x), vec4<u32>(global1.b.x, 4294967295u, u_input.b.x, 74165u)));
    global1 = func_1();
    let var_1 = Struct_4(global1.c, !any(vec4<bool>(all(vec3<bool>(global1.a, global1.c.a, true)), true, false, false)));
    global3 = !((~(global1.b.x | u_input.b.x) | 44335u) > 74668u);
    let var_2 = !(!select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(global2.a, global1.c.a, true, var_1.b), vec4<bool>(var_1.b, true, var_1.b, global2.a), vec4<bool>(false, global2.a, true, false)), global0[_wgslsmith_index_u32(u_input.b.x, 8u)] >= var_1.a.b), select(vec4<bool>(false, true, false, var_1.b), vec4<bool>(false, false, var_1.a.a, global1.c.a), vec4<bool>(global2.a, true, global2.a, false)), vec4<bool>(true, global1.a, false, true)));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zz);
}

