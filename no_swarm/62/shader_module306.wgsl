struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(340f, 338f, 829f), vec3<f32>(956f, -131f, -1893f), vec3<f32>(1110f, 1000f, -484f), vec3<f32>(946f, 1607f, 449f), vec3<f32>(1056f, -655f, -190f), vec3<f32>(-674f, 701f, 1000f), vec3<f32>(-556f, -229f, 467f), vec3<f32>(-1698f, 1938f, -659f), vec3<f32>(2105f, 879f, 771f), vec3<f32>(808f, 559f, 282f), vec3<f32>(-331f, -1274f, -835f), vec3<f32>(681f, -1259f, -1073f), vec3<f32>(1136f, 162f, 883f), vec3<f32>(697f, -545f, -1178f), vec3<f32>(1024f, 423f, 933f), vec3<f32>(1000f, 541f, 2350f), vec3<f32>(-1511f, -1206f, -1090f), vec3<f32>(-599f, -178f, 1000f), vec3<f32>(713f, -1000f, -511f), vec3<f32>(293f, -957f, 2061f), vec3<f32>(1397f, 823f, 2671f), vec3<f32>(-1059f, -1745f, -1475f), vec3<f32>(-1100f, -939f, 839f), vec3<f32>(-438f, 278f, 929f), vec3<f32>(694f, -100f, 559f), vec3<f32>(-1189f, -246f, 238f), vec3<f32>(926f, -1558f, 853f), vec3<f32>(-171f, 543f, 1599f), vec3<f32>(-869f, 820f, -330f), vec3<f32>(-1796f, 1000f, 1000f), vec3<f32>(1362f, 173f, 444f));

var<private> global3: array<Struct_1, 10>;

var<private> global4: array<i32, 26> = array<i32, 26>(-20239i, 0i, 1i, i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648), 14503i, 2147483647i, 47866i, -34395i, 79178i, -1i, 1i, -1i, 1i, 2147483647i, -1i, 1i, 2147483647i, i32(-2147483648), 8564i, 65637i, -1i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x;
    var var_1 = func_1(global3[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1347f) + global0.b), firstTrailingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(-72025i, u_input.a), -vec2<i32>(global4[_wgslsmith_index_u32(0u, 26u)], 0i)) | vec2<i32>(u_input.a, ~u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(step(global0.b, global0.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b - global0.b), global0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -108f), 662f));
    let var_2 = Struct_1(vec2<bool>(global0.a.x, var_1.a.x), 277f);
    var var_3 = _wgslsmith_sub_i32(-(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, global4[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_div_i32(u_input.a, u_input.a))), abs(~countOneBits(global4[_wgslsmith_index_u32(1u, 26u)]) << (1u % 32u)));
    let var_4 = max(~_wgslsmith_add_i32(-17084i, -global4[_wgslsmith_index_u32(11021u, 26u)]), u_input.a);
    let var_5 = Struct_1(!global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_f_op_f32(f32(-1f) * -913f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1138f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec3<u32>(59196u, 4294967295u, 0u))), -reverseBits(34653i), global2[_wgslsmith_index_u32(4294967295u, 31u)]);
}

