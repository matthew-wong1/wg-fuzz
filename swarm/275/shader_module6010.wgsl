struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: Struct_2;

var<private> global2: vec4<i32> = vec4<i32>(-1i, 8046i, -1i, 0i);

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<u32>(32068u, 4294967295u, 88565u), Struct_1(vec2<i32>(-1618i, 37963i), -24219i, vec4<u32>(74124u, 4294967295u, 4294967295u, 23216u))), Struct_2(vec3<u32>(4294967295u, 84273u, 0u), Struct_1(vec2<i32>(-22473i, -53034i), -6089i, vec4<u32>(142598u, 85830u, 0u, 43817u))), Struct_2(vec3<u32>(25830u, 4294967295u, 54233u), Struct_1(vec2<i32>(1i, 63665i), 0i, vec4<u32>(581u, 38765u, 7035u, 0u))));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 18u)];
    let var_1 = global1.b.a.x;
    let var_2 = Struct_1(-global2.xx, ~_wgslsmith_mult_i32(global2.x, _wgslsmith_mod_i32(u_input.b, 9412i)), reverseBits(vec4<u32>(~u_input.a & select(1u, 18212u, true), 4294967295u, u_input.a, 1u)));
    let var_3 = var_2.c;
    global3 = array<Struct_2, 3>();
    return ~global1.b.b;
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = vec2<bool>(-6450i < firstTrailingBit(func_3()), all(vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true, select(true, false, true))));
    global3 = array<Struct_2, 3>();
    global2 = firstTrailingBit(select(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(33678i, -30760i, global2.x, 67538i) | vec4<i32>(0i, global2.x, 1i, 2147483647i), ~vec4<i32>(-36399i, 1i, global2.x, u_input.b)), select(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), -vec4<i32>(7564i, -22146i, -65899i, -20415i), !vec4<bool>(var_0.x, false, var_0.x, false))), select(vec4<i32>(-1i) * -vec4<i32>(-20727i, u_input.b, global1.b.b, u_input.b), vec4<i32>(global1.b.b, -5542i, global1.b.b, 2147483647i) | max(vec4<i32>(global1.b.b, -11451i, global2.x, -46912i), vec4<i32>(-26340i, global1.b.b, global2.x, u_input.b)), vec4<bool>(var_0.x, !var_0.x, var_0.x | true, false || var_0.x)), select(vec4<bool>(all(vec2<bool>(var_0.x, true)), any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), var_0.x, !var_0.x), vec4<bool>(var_0.x || var_0.x, true || var_0.x, var_0.x, true), !select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x)))));
    let var_1 = global1.b;
    let var_2 = arg_0;
    return ~abs(~firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, -2147483647i, global1.b.a.x, u_input.b), vec4<i32>(31312i, global1.b.a.x, -55360i, -1210i))));
}

fn func_1() -> bool {
    let var_0 = global1.b.c.x;
    global2 = (vec4<i32>(-1i) * -vec4<i32>(global2.x, ~u_input.b, 0i, u_input.b)) | func_2(Struct_3(_wgslsmith_sub_u32(~global1.a.x, _wgslsmith_mult_u32(u_input.a, 18226u))));
    global2 = _wgslsmith_add_vec4_i32(~(~countOneBits(vec4<i32>(global1.b.a.x, -1i, u_input.b, 24406i))), vec4<i32>(i32(-1i) * -31548i, -abs(_wgslsmith_clamp_i32(u_input.b, 1i, 1i)), -global2.x, countOneBits(_wgslsmith_sub_i32(13896i, global2.x)) >> (_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(global1.a.x, 24731u, global1.a.x)) % 32u)));
    global0 = array<Struct_3, 18>();
    var var_1 = all(vec4<bool>(true, global1.b.b != (i32(-1i) * -2147483647i), true, all(vec3<bool>(all(vec2<bool>(false, true)), true, false))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(600f))) * 1f), -395f)) <= 987f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    var var_0 = global2.x;
    var var_1 = Struct_3(global1.b.c.x);
    var_1 = Struct_3(var_1.a << (93545u % 32u));
    let var_2 = -firstTrailingBit(_wgslsmith_dot_vec2_i32(global2.wz, select(_wgslsmith_mod_vec2_i32(vec2<i32>(33177i, u_input.b), vec2<i32>(global1.b.b, global1.b.b)), -vec2<i32>(2147483647i, global1.b.b), true)));
    let var_3 = vec2<i32>(global1.b.b, u_input.b) >> ((global1.a.zy | ~global1.a.xy) % vec2<u32>(32u));
    var var_4 = vec3<bool>(true, select(select(var_2 <= ~(-9967i), true, true), false, func_1()), false);
    let var_5 = Struct_2(global1.a, Struct_1(-max(vec2<i32>(2147483647i, -2916i), global2.zx), _wgslsmith_mod_i32(countOneBits(var_3.x), -u_input.b), select(~vec4<u32>(1u, var_1.a, 32401u, global1.b.c.x), vec4<u32>(4294967295u, u_input.a, 8u, global1.a.x), vec4<bool>(var_4.x, var_4.x, var_4.x, true)) >> (~(~vec4<u32>(u_input.a, 40752u, 48745u, 47574u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~countOneBits(vec2<u32>(0u, var_5.b.c.x))), _wgslsmith_mod_vec2_u32(var_5.b.c.zz, ~vec2<u32>(var_1.a, 0u)) >> (global1.b.c.zy % vec2<u32>(32u)), var_4.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(-12713i, min(-2942i, var_2)), vec2<i32>(-1i) * -firstTrailingBit(global1.b.a)));
}

