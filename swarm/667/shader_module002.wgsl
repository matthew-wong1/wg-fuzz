struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<u32>(8736u, 15511u, 0u), vec3<u32>(12934u, 94219u, 1u), vec3<i32>(-7328i, -1i, -6227i)), Struct_2(vec3<u32>(37494u, 27905u, 4294967295u), vec3<u32>(51643u, 55688u, 36528u), vec3<i32>(-63874i, -38211i, -1i)), Struct_2(vec3<u32>(7560u, 3491u, 3601u), vec3<u32>(121u, 0u, 4294967295u), vec3<i32>(0i, -1i, 1i)), Struct_2(vec3<u32>(47969u, 31936u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<i32>(39192i, 20752i, -1i)), Struct_2(vec3<u32>(1u, 15451u, 0u), vec3<u32>(41387u, 1u, 0u), vec3<i32>(-53304i, -1i, i32(-2147483648))), Struct_2(vec3<u32>(776u, 4294967295u, 4294967295u), vec3<u32>(25344u, 5838u, 112411u), vec3<i32>(1i, 0i, -1i)), Struct_2(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 25854u, 6608u), vec3<i32>(-15222i, -40556i, 1i)), Struct_2(vec3<u32>(22351u, 35432u, 16059u), vec3<u32>(93308u, 0u, 4294967295u), vec3<i32>(-9628i, 1i, 1i)), Struct_2(vec3<u32>(0u, 35793u, 49222u), vec3<u32>(54589u, 32718u, 9466u), vec3<i32>(1i, -23848i, 2147483647i)), Struct_2(vec3<u32>(4294967295u, 6544u, 37707u), vec3<u32>(0u, 10206u, 1u), vec3<i32>(0i, 0i, 1i)), Struct_2(vec3<u32>(45604u, 0u, 4294967295u), vec3<u32>(0u, 37034u, 18727u), vec3<i32>(i32(-2147483648), -27886i, 17439i)), Struct_2(vec3<u32>(4768u, 54686u, 0u), vec3<u32>(1u, 4294967295u, 7264u), vec3<i32>(23745i, -644i, 26565i)), Struct_2(vec3<u32>(24001u, 46267u, 4294967295u), vec3<u32>(59775u, 39241u, 1u), vec3<i32>(16337i, -1i, i32(-2147483648))), Struct_2(vec3<u32>(4294967295u, 25060u, 75377u), vec3<u32>(1u, 4294967295u, 27928u), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_2(vec3<u32>(0u, 4294967295u, 30150u), vec3<u32>(4294967295u, 81264u, 1u), vec3<i32>(0i, 27137i, 34856i)), Struct_2(vec3<u32>(48397u, 1u, 19540u), vec3<u32>(10603u, 104406u, 7161u), vec3<i32>(2147483647i, -39124i, -213i)), Struct_2(vec3<u32>(82548u, 40578u, 1u), vec3<u32>(1u, 1u, 22106u), vec3<i32>(2147483647i, 33573i, 1i)), Struct_2(vec3<u32>(1u, 36004u, 87542u), vec3<u32>(1u, 56590u, 0u), vec3<i32>(-33259i, 27160i, 0i)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 69713u), vec3<u32>(0u, 14180u, 22219u), vec3<i32>(1i, 1i, 1518i)), Struct_2(vec3<u32>(0u, 1u, 77733u), vec3<u32>(18506u, 1u, 4294967295u), vec3<i32>(-1i, -24945i, 16641i)), Struct_2(vec3<u32>(1u, 13117u, 55318u), vec3<u32>(25518u, 26128u, 4294967295u), vec3<i32>(i32(-2147483648), 18856i, -12334i)), Struct_2(vec3<u32>(8029u, 892u, 22403u), vec3<u32>(0u, 10106u, 36980u), vec3<i32>(1201i, 15843i, 0i)));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(62306u, 1u, 4644u), vec3<u32>(1u, 1u, 6211u), vec3<u32>(73473u, 76042u, 32361u), vec3<u32>(0u, 96786u, 29077u), vec3<u32>(34074u, 49266u, 1u), vec3<u32>(1u, 3876u, 1u), vec3<u32>(12184u, 35758u, 24996u), vec3<u32>(42687u, 1663u, 5275u), vec3<u32>(50210u, 0u, 4294967295u), vec3<u32>(0u, 95237u, 26271u), vec3<u32>(52411u, 9264u, 0u), vec3<u32>(100500u, 1u, 0u), vec3<u32>(8057u, 34310u, 4294967295u), vec3<u32>(5738u, 1862u, 29914u), vec3<u32>(1u, 47209u, 7326u), vec3<u32>(1u, 0u, 16407u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(40578u, 1236u, 2027u), vec3<u32>(336u, 4294967295u, 52720u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 0u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global0 = array<Struct_2, 22>();
    global1 = firstLeadingBit(u_input.e.yy);
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(510f + 954f), -1308f, _wgslsmith_f_op_f32(ceil(231f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-569f))))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1258f + 325f), _wgslsmith_f_op_f32(min(447f, -1000f)))))), abs(u_input.a), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(global1.x, _wgslsmith_div_u32(0u >> (_wgslsmith_dot_vec2_u32(min(u_input.e.zy, vec2<u32>(4294967295u, 75551u)), ~u_input.b.zy) % 32u), _wgslsmith_sub_u32(firstTrailingBit(global1.x), global1.x)));
    global0 = array<Struct_2, 22>();
    let var_0 = true;
    global1 = ~max(u_input.d.yy, abs(u_input.b.ww) << (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) & (abs(u_input.e.zy) >> (u_input.b.yz % vec2<u32>(32u)));
    var var_1 = u_input.a;
    var var_2 = -964f;
    let x = u_input.a;
    s_output = func_1(abs(u_input.e.x));
}

