struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(2147483647i, vec2<f32>(444f, 1000f), 1u, false, 0u), Struct_1(i32(-2147483648), vec2<f32>(240f, 1693f), 1333u, true, 4294967295u), Struct_1(-43624i, vec2<f32>(1842f, -2053f), 35453u, false, 1u), Struct_1(-39064i, vec2<f32>(-261f, -931f), 25458u, true, 10999u), Struct_1(0i, vec2<f32>(-203f, 517f), 4294967295u, true, 24282u), Struct_1(-24635i, vec2<f32>(1478f, -1000f), 1u, false, 47688u), Struct_1(21077i, vec2<f32>(-606f, -259f), 20072u, true, 4294967295u), Struct_1(31050i, vec2<f32>(524f, -268f), 15895u, false, 0u), Struct_1(-30704i, vec2<f32>(-944f, 646f), 4294967295u, true, 48843u), Struct_1(2147483647i, vec2<f32>(1000f, 402f), 0u, true, 50716u), Struct_1(1473i, vec2<f32>(-1423f, 870f), 70722u, true, 57692u), Struct_1(1i, vec2<f32>(-1000f, 470f), 9939u, false, 18355u), Struct_1(30549i, vec2<f32>(1159f, -1000f), 52796u, true, 4294967295u), Struct_1(0i, vec2<f32>(-1000f, 476f), 1u, true, 83602u), Struct_1(-4372i, vec2<f32>(724f, -287f), 4294967295u, true, 39824u), Struct_1(-15885i, vec2<f32>(-1264f, 1881f), 47989u, true, 0u), Struct_1(1i, vec2<f32>(-2335f, 578f), 138504u, true, 0u), Struct_1(-1i, vec2<f32>(1378f, 205f), 4294967295u, true, 0u));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-49464i, vec2<f32>(317f, 162f), 23525u, false, 0u), Struct_1(i32(-2147483648), vec2<f32>(-265f, -352f), 4294967295u, true, 71625u), Struct_1(-50782i, vec2<f32>(421f, -414f), 1u, false, 4294967295u), Struct_1(1066i, vec2<f32>(-1756f, 1948f), 1132u, true, 0u), Struct_1(-1i, vec2<f32>(-923f, 1000f), 43473u, true, 1u), Struct_1(1i, vec2<f32>(-1085f, 947f), 1u, true, 4294967295u), Struct_1(45780i, vec2<f32>(-881f, 1000f), 4294967295u, false, 1u), Struct_1(-25886i, vec2<f32>(-580f, -734f), 1u, true, 15374u), Struct_1(-21556i, vec2<f32>(1899f, -1093f), 1u, false, 85564u), Struct_1(0i, vec2<f32>(365f, 432f), 68147u, false, 1702u), Struct_1(24699i, vec2<f32>(499f, -1435f), 44018u, true, 34187u), Struct_1(i32(-2147483648), vec2<f32>(1005f, 2065f), 10231u, true, 1u), Struct_1(0i, vec2<f32>(-1628f, 274f), 0u, false, 22631u), Struct_1(4443i, vec2<f32>(308f, 176f), 0u, false, 111625u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = Struct_1(global2.a, _wgslsmith_div_vec2_f32(global2.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(552f, -1000f))), global2.b)))), abs(u_input.c.x), u_input.b.x >= u_input.b.x, global2.c);
    var var_1 = global3[_wgslsmith_index_u32(~(~abs(global2.c)), 14u)];
    let var_2 = u_input.b;
    var var_3 = global3[_wgslsmith_index_u32(0u, 14u)];
    var_1 = var_0;
    return any(!vec3<bool>(var_0.d, true, all(vec4<bool>(false, global2.d, false, true))));
}

fn func_2() -> vec2<bool> {
    var var_0 = vec3<bool>(false, (!global2.d | func_3()) | global2.d, global2.d);
    var var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 18u)];
    var var_2 = 0i;
    var var_3 = u_input.c.xwx;
    var var_4 = _wgslsmith_f_op_f32(var_1.b.x - 385f) < var_1.b.x;
    return var_0.yy;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_sub_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~u_input.c.x, 14u)], -12211i), -_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(24609u, 14u)])), vec2<f32>(_wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(global2.b.x * global2.b.x)))), _wgslsmith_f_op_f32(exp2(global2.b.x))), ~(u_input.d & firstTrailingBit(global2.e)), false, u_input.c.x);
    var var_1 = var_0;
    var_1 = global1[_wgslsmith_index_u32(global2.e, 18u)];
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -1624f) + var_1.b)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, -849f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-160f, global2.b.x), vec2<f32>(-1025f, -1059f))), vec2<bool>(global2.d, false)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))), select(!select(vec2<bool>(true, global2.d), vec2<bool>(var_1.d, var_0.d), false), func_2(), var_1.d))), 36473u, any(!vec4<bool>(global2.d & true, true, !var_0.d, all(vec3<bool>(true, global2.d, false)))), global2.c);
    global2 = Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(var_0.b.x, global2.b.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, 1242f), vec2<f32>(var_1.b.x, global2.b.x), true))))), var_2.e, var_2.d, _wgslsmith_mod_u32(4294967295u, ~reverseBits(18307u)));
    return Struct_1(firstTrailingBit(-2147483647i << ((1u & (global2.e << (27697u % 32u))) % 32u)), var_1.b, var_2.c, global2.d, 1u & u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~u_input.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), global2.b.x, !global2.d))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(round(global2.b.x))))));
    let var_3 = _wgslsmith_f_op_f32(-func_1().b.x);
    var var_4 = Struct_1(-42589i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), u_input.c.x, ~global2.c < ~_wgslsmith_mod_u32(~var_0.e, select(4294967295u, 1u, global2.d)), 0u);
    var_2 = -959f;
    var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(var_4.c, _wgslsmith_sub_u32(32228u, 1u), countOneBits(var_1.x), var_0.e)), var_0.b.x);
}

